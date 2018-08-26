require 'formula'

class Sshpass < Formula
  url 'https://github.com/liranms/sshpass/archive/v1.07.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 'f362cf6d9d090e2b71c0226918aa59b8639ccdeaef4491792e09e42dfa4b0af1'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end