class Day10tui < Formula
  desc "Webp image generator for responsive HTML sites"
  homepage "https://github.com/mtelvers/day10-tui.git/"
  url "https://github.com/mtelvers/day10-tui.git", branch: "master"
  version "0.0.1"
  license "ISC"

  bottle do
    root_url "https://github.com/mtelvers/homebrew-ocaml/releases/download/day10tui-0.0.1"
    sha256 cellar: :any, arm64_sequoia: "d4d2724b381e5ea7509bd2f2e59ee2f4c478e922cfcb8325f133d935d7f3fb95"
    sha256               x86_64_linux:  "94096f179d13bb75e68d63e84e76c0b99098fcbc1fa9f546967e530a2fbac39c"
  end

  depends_on "apache-arrow"
  depends_on "gpatch"
  depends_on "libffi"
  depends_on "opam"
  depends_on "pkg-config"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/day10-tui"
  end
end
