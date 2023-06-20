class OcamlDevTools < Formula
  desc "OCaml compiler and accompanying developer tools"
  homepage "https://ocaml.org/"
  license "LGPL-2.1-only" => { with: "OCaml-LGPL-linking-exception" }
  head "https://github.com/ocaml/ocaml.git", branch: "trunk"

  stable do
    url "https://caml.inria.fr/pub/distrib/ocaml-5.0/ocaml-5.0.0.tar.xz"
    sha256 "cb17f0a534dd4b3fec93d011b0be1ba5c6087da033cf789e85a34b9641ecc65f"
  end

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/ocaml-dev-tools-5.0.0"
    sha256 cellar: :any,                 ventura:      "558fd83d4506233a9de826d2daae332c19d5549d38aecdda93447c6abf3a3854"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "36804b147172abd35081122a7aa54df1ed0fac89ffe828a483bbd9ed5dc7457b"
  end

  pour_bottle? only_if: :default_prefix

  def install
    args = %W[
      --prefix=#{HOMEBREW_PREFIX}/ocaml/5.0/dev-tools
      --enable-debug-runtime
      --mandir=#{man}
    ]
    system "./configure", *args
    system "make", "world.opt"
    system "make", "prefix=#{prefix}", "install"
  end
end
