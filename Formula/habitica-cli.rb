class HabiticaCli < Formula
  desc "A ⚠️proof-of-concept⚠️ of an Habitica CLI"
  homepage ""
  url "https://github.com/Mayeu/habitica-cli/archive/v0.0.1.tar.gz"
  sha256 "5fc587f3b77d0cbe349068671146de75ee569a409bdaf33c16dc4b5392895746"

  def install
    bin.install "habitica"
  end

  test do
    system "habitica", "-v"
  end
end
