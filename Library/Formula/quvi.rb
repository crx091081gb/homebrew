require 'formula'

class Quvi < Formula
  url 'http://sourceforge.net/projects/quvi/files/0.2/quvi-0.2.16.tar.bz2'
  sha1 'c0c9225e6a739b3b776cc0cfc9ed8211443a2ec0'
  homepage 'http://quvi.sourceforge.net/'

  depends_on 'pkg-config' => :build
  depends_on 'pcre'
  depends_on 'lua'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-smut",
                          "--enable-broken"
    system "make install"
  end
end

