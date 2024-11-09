class Oxcaml < Formula
  desc "OxCaml compiler and accompanying developer tools"
  homepage "https://oxcaml.org/"
  license "LGPL-2.1-only" => { with: "OCaml-LGPL-linking-exception" }
  version "5.2.0+with-extensions"
  url "https://github.com/avsm/homebrew-ocaml.git", branch: "oxcaml"

  depends_on "opam" => :build
  depends_on "autoconf"
  depends_on "gpatch"

  def install
    inreplace "bin/oxcaml.sh", "%%PREFIX%%", "#{prefix}/opam"
    inreplace "bin/oxpam", "%%PREFIX%%", "#{prefix}/opam"
    system "bash", "bin/oxcaml.sh"
    bin.install "bin/oxpam"
  end
end
