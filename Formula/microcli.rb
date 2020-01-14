class Microcli < Formula
  desc "Dank bro"
  homepage "https://bitbucket.wexapps.com/projects/MOB/repos/microcli/browse"
  url "https://us-east-1.artifactory.wexapps.com/artifactory/fleet-mobile-releases/com/wex/microcli/1.2.0/microcli-1.2.0.jar"
  sha256 "4763aaa12c58ae29354953b4e308854d3cefb9222c6262cf788b79ac50b68cf7"
  version "1.2"
  bottle :unneeded

  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/'microcli-1.2.0.jar', 'microcli'
  end
end
