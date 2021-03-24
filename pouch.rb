class Pouch < Formula
  desc "Secret management for Swift projects"
  homepage "https://github.com/sunshinejr/Pouch"
  version "0.1.0"
  url "https://github.com/sunshinejr/Pouch/archive/#{version}.tar.gz"
  sha256 "423c7c40dc051a1145990d309b4c6322c2fdfce0952b284d1c0a8fed97df21c9"
  head "https://github.com/sunshinejr/Pouch.git"

  depends_on :xcode => ["12", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end