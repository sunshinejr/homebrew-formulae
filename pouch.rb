class Pouch < Formula
  desc "Secret management for Swift projects"
  homepage "https://github.com/sunshinejr/Pouch"
  version "0.4.0"
  url "https://github.com/sunshinejr/Pouch/archive/#{version}.tar.gz"
  sha256 "bd3add31977555d0308af6385f64f38280c29c9e110e0117f36eedc3f6ca97ea"
  head "https://github.com/sunshinejr/Pouch.git"

  depends_on :xcode => ["12", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end