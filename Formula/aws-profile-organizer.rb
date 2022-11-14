class AwsProfileOrganizer < Formula
  desc "AWS Profile Organizer"
  homepage "https://github.com/easytocloud/aws-profile-organizer.git"
  license "MIT"
  sha256 "a1007cf04641f382090d3ffec33c6002877d40fc9fe1357f267def7fdfd9d889"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/v0.1.2.zip"
  version '0.1.2'

  def install

    bin.install "distribution/bin/aws-profile-organizer-setup"
    bin.install "distribution/bin/aws-profile-organizer-rc"

    zsh_function.install "distribution/functions/awsenv"
    zsh_function.install "distribution/functions/awsprofile"
    zsh_function.install "distribution/functions/_log"
    zsh_function.install "distribution/functions/_error"
    zsh_function.install "distribution/functions/_debug"
    zsh_function.install "distribution/functions/_die"
    zsh_function.install "distribution/functions/_list_profiles"
  end

  test do
    system "true"
  end
end
