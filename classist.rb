require "formula"

class Classist < Formula
  homepage "https://github.com/andersonlfeitosa/classist"
  url "https://raw.githubusercontent.com/andersonlfeitosa/homebrew-classist/master/classist-dist.zip"
  sha256 "20b34f02a2f5dfa5a3984bdf3ea2cef2b1771b2a0ebcdf414241bac205473357"

  def install
    inreplace "brew/classist", "##PREFIX##", "#{prefix}"
    prefix.install "classist.jar"
    bin.install "brew/classist"
  end
end