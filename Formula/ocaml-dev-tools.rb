class OcamlDevTools < Formula
  desc "OCaml compiler and accompanying developer tools"
  homepage "https://ocaml.org/"
  license "LGPL-2.1-only" => { with: "OCaml-LGPL-linking-exception" }
  head "https://github.com/ocaml/ocaml.git", branch: "trunk"

  stable do
    url "https://caml.inria.fr/pub/distrib/ocaml-5.0/ocaml-5.0.0.tar.xz"
    sha256 "cb17f0a534dd4b3fec93d011b0be1ba5c6087da033cf789e85a34b9641ecc65f"
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
