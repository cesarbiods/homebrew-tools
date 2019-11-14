class Foobar < Formula
    desc "<Dank bro>"
    homepage "https://github.com/cesarbiods/Btree"
    url "https://github.com/cesarbiods/Btree/get/HEAD.zip", :using => :curl
    version "1.0"
    sha256 "<sha>"
  def install
    #   mv Dir.glob("Btree-*").first, "Btree"
      bin.install "gradlew"
    end
    test do
      foo help
    end
  end