class AwsProfileOrganizer < Formula
  desc "AWS Profile Organizer"
  homepage "https://github.com/easytocloud/aws-profile-organizer.git"
  license "MIT"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/v0.1.1.zip"
  version '0.1.1'

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
