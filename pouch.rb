class Pouch < Formula
  desc "Secret management for Swift projects"
  homepage "https://github.com/sunshinejr/Pouch"
  version "0.1.2"
  url "https://github.com/sunshinejr/Pouch/archive/#{version}.tar.gz"
  sha256 "6ce02fe34c78994f79a297b0854908505353748fab57308a22220e61fd900683"
  head "https://github.com/sunshinejr/Pouch.git"

  depends_on :xcode => ["12", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end