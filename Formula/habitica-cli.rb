class HabiticaCli < Formula
  desc "A ⚠️proof-of-concept⚠️ of an Habitica CLI"
  version "0.0.2"
  homepage ""
  url "https://github.com/Mayeu/habitica-cli/archive/v0.0.2.tar.gz"
  sha256 "dec2b8609e098149ef6a208e73104a93347b77ba064c55e14c231c14da277057"

  def install
    bin.install "habitica"
  end

  test do
    system "habitica", "-v"
  end
end
