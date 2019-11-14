class Foobar < Formula
    desc "<Dank bro>"
    url "git@github.com:cesarbiods/Btree.git"
    version "1.0"
    sha256 "<sha>"
  def install
      mv Dir.glob("foo-*").first, "foo"
      bin.install "foo"
    end
    test do
      foo help
    end
  end