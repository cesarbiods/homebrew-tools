class Microcli < Formula
  desc "Dank bro"
  homepage "https://bitbucket.wexapps.com/projects/MOB/repos/microcli/browse"
  url "https://us-east-1.artifactory.wexapps.com/artifactory/fleet-mobile-releases/com/wex/microcli/1.2.0/microcli-1.2.0.jar"
  # Run "brew fetch microcli --build-from-source" to generate a new checksum after every update
  sha256 "cf58a4f07f9b72a6627688b4b771cefd7bf67010e093c719a251270f89a96841"
  version "1.2"
  bottle :unneeded

  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/'microcli-1.2.0.jar', 'microcli'
  end
end
