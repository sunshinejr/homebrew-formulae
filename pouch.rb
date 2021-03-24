class Pouch < Formula
  desc "Secret management for Swift projects"
  homepage "https://github.com/sunshinejr/Pouch"
  version "0.1.2"
  url "https://github.com/sunshinejr/Pouch/archive/#{version}.tar.gz"
  sha256 "28212e66545bfbe7bc5aa8f6e1f13f5a365b0a43bd2c98a1366eb6f3cb9b0126"
  head "https://github.com/sunshinejr/Pouch.git"

  depends_on :xcode => ["12", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end