class Day10_tui < Formula
  desc "Webp image generator for responsive HTML sites"
  homepage "https://github.com/mtelvers/day10-tui.git/"
  url "https://github.com/mtelvers/day10-tui.git", branch: "master"
  version "0.0.1"
  license "ISC"

  depends_on "gpatch"
  depends_on "opam"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/day10-tui"
  end
end
