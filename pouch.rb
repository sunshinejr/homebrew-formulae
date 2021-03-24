class Pouch < Formula
  desc "Secret management for Swift projects."
  homepage "https://github.com/sunshinejr/Pouch"
  url "https://github.com/sunshinejr/Pouch/releases/download/0.1.0/pouch.zip"
  sha256 "436536099df66d620f5d515b1b568b7c7b64b20939f55d9c79a324719274012d"
  license "MIT"
  head "https://github.com/sunshinejr/Pouch.git"
  version "0.1.0"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/pouch", "--help"
  end
end