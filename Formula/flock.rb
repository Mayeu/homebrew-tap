require 'formula'

class Flock < Formula
  homepage 'https://github.com/discoteq/flock'
  version '0.2.3'
  url "https://github.com/discoteq/flock/archive/4148b86be01bbfad45ceef1f835cc12ff395d3c0.zip"
  sha256 '8fe06377c2a0345fe6c3a1c80b3c979bde35b1acb2eb12ca5dd8c6c73df4808f'

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    # Remove man page stuff, too hard to build to my taste
    system 'sed', '-i.bak', '57,66d', 'Makefile.am'
    system './autogen.sh', "--prefix=#{prefix}"
    system 'make', 'flock'
    bin.install 'flock'
  end

  test do
    system "#{bin}/flock", 'tmpfile', 'true'
  end
end
