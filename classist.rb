require "formula"

class classist < Formula
  homepage "https://github.com/andersonlfeitosa/classist"
  url "https://raw.githubusercontent.com/andersonlfeitosa/homebrew-classist/master/classist-dist.zip"
  sha256 "00f4c849842829b087eb0363c5fae141693e34f9b69c557cf513f353cfdeae44"

  def install
    inreplace "brew/classist", "##PREFIX##", "#{prefix}"
    prefix.install "classist.jar"
    bin.install "brew/classist"
  end
end