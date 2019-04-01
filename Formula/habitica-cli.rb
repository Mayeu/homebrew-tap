class HabiticaCli < Formula
  desc "A ⚠️proof-of-concept⚠️ of an Habitica CLI"
  version "0.1.0"
  homepage ""
  url "https://github.com/Mayeu/habitica-cli/archive/v0.1.0.tar.gz"
  sha256 "01be7e2f54db7a56ff71ef7931d90ba9a7ee663c77c0d42238a30b7dcae5895f"

  def install
    bin.install "habitica"
  end

  test do
    system "habitica", "-v"
  end
end
