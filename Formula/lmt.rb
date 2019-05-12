require "language/go"

class Lmt < Formula
  desc "literate markdown tangle"
  homepage "https://github.com/driusan/lmt"
  url "https://github.com/driusan/lmt/archive/460b02bccdb317f3d5f3163534ff4312d44698c8.zip"
  sha256 "b02d41bcd9847131f953521a8de35227bdd1c9b1ec73a6ea14715677c99eafbf"
  head "https://github.com/driusan/lmt.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p "src/github.com/driusan"
    ln_s buildpath, "src/github.com/driusan/lmt"
    Language::Go.stage_deps resources, buildpath/"src"
    system "go", "build", "-o", bin/"lmt"
  end

  test do
    system bin/"lmt", "help"
  end
end
