class Microcli < Formula
    desc "Dank bro"
    homepage "https://bitbucket.wexapps.com/projects/MOB/repos/microcli/browse"
    url "https://us-east-1.artifactory.wexapps.com/artifactory/fleet-mobile-snapshots/com/wex/microcli/refactor-SNAPSHOT/microcli-refactor-20191119.165510-1.jar"
    version "1.0"
  def install
      system 'java -jar microcli.jar'
    end
  end