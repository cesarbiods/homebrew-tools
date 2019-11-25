class Microcli < Formula
  desc "Dank bro"
  homepage "https://bitbucket.wexapps.com/projects/MOB/repos/microcli/browse"
  url "https://us-east-1.artifactory.wexapps.com/artifactory/fleet-mobile-snapshots/com/wex/microcli/refactor-SNAPSHOT/microcli-refactor-20191119.165510-1.jar"
  sha256 "4763aaa12c58ae29354953b4e308854d3cefb9222c6262cf788b79ac50b68cf7"
  version "1.0"
  bottle :microcli
  # depends_on :openjdk => '1.8+'
    
  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/'microcli.jar', 'microcli'
  end
end