class Srcsetter < Formula
  desc "Webp image generator for responsive HTML sites"
  homepage "https://github.com/avsm/srcsetter/"
  url "https://github.com/avsm/srcsetter.git", branch: "main"
  version "0.0.1"
  license "ISC"

  depends_on "gpatch"
  depends_on "opam"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/srcsetter"
  end
end
