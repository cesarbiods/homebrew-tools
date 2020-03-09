class JavaRequirement < Requirement
  fatal true

  satisfy(:build_env => false) { which("corretto") }

  def message; <<~EOS
    Java corretto is required; install it via one of:
      brew install r
      brew cask install r-app
    EOS
  end
end

class Microclibeta < Formula
  desc "Microcli is a CLI tool for managing AWS Cloud Formation Stacks"
  homepage "https://bitbucket.wexapps.com/projects/MOB/repos/microcli/browse"
  url "https://us-east-1.artifactory.wexapps.com/artifactory/fleet-mobile-releases/com/wex/microcli/2.4.0/microcli-2.4.0.jar"
  sha256 "fd64a1e9be67232049a6b9a26ed5789deccc8e3b70f2d649e0eccbda8ff3094b"
  version "2.4"
  bottle :unneeded
  depends_on JavaRequirement

  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/'microcli-2.4.0.jar', 'microclibeta'
  end
end
