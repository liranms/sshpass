require 'formula'

class Sshpass < Formula
  url 'https://github.com/liranms/sshpass/archive/v1.07.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 'F362CF6D9D090E2B71C0226918AA59B8639CCDEAEF4491792E09E42DFA4B0AF1'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end