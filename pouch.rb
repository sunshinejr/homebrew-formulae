class Pouch < Formula
  desc "Secret management for Swift projects"
  homepage "https://github.com/sunshinejr/Pouch"
  version "0.2.0"
  url "https://github.com/sunshinejr/Pouch/archive/#{version}.tar.gz"
  sha256 "f0dad64da6587f120b10261ae19bf99bddd2953022134c08d4308f79f15d385c"
  head "https://github.com/sunshinejr/Pouch.git"

  depends_on :xcode => ["12", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end