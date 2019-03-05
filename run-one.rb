# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RunOne < Formula
  desc "Run one instance of some unique combination of command and arguments at a time"
  homepage "https://launchpad.net/run-one"
  url "https://launchpad.net/run-one/trunk/1.17/+download/run-one_1.17.orig.tar.gz"
  sha256 "b7c9b257b52f29ba0d923a4dfee4edd47332ebeca0200c65f309eb6ae33f701f"

  depends_on "mayeu/mayeu/flock" => :run

  def install
    # Patch md5sum to be md5
    system 'sed', '-i.bak', '-e', 's/md5sum/md5/', 'run-one'
    bin.install "run-one"
    bin.install "keep-one-running"
    bin.install "run-one-constantly"
    bin.install "run-one-until-failure"
    bin.install "run-one-until-success"
    bin.install "run-this-one"
    man1.install "run-one.1"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test run-one`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
