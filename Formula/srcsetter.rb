class Srcsetter < Formula
  desc "Webp image generator for responsive HTML sites"
  homepage "https://github.com/avsm/srcsetter/"
  url "https://github.com/avsm/srcsetter.git", branch: "main"
  version "0.0.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/srcsetter-0.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b3e1289965d8bcf086db06b18e6c2865f9949a9e1202b8fafa640f3e363b6bd4"
    sha256 cellar: :any_skip_relocation, ventura:       "9b61e8e4be5f777e3ef98672f275909a80c3cc3f82d6886ca1a90b66ea7bb9f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d8279f11f30edf865368a3c6f63d811d31c1a9ca019ef86e93afeb6624232850"
  end

  depends_on "gpatch"
  depends_on "opam"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/srcsetter"
  end
end
