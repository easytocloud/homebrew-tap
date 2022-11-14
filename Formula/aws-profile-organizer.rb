class AwsProfileOrganizer < Formula
  desc "AWS Profile Organizer"
  homepage "https://github.com/easytocloud/aws-profile-organizer.git"
  license "MIT"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/v0.1.2-fix.zip"
  sha256 "b030b0b77fcf9f4a5c5b29d106e5363483cdacbb8eb9b59e2d810f5ba59b5265"
  version '0.1.2-fix'

  def install

    bin.install "distribution/bin/aws-profile-organizer-setup"
    bin.install "distribution/bin/aws-profile-organizer-rc"

    zsh_function.install "distribution/functions/awsenv"
    zsh_function.install "distribution/functions/awsprofile"
    zsh_function.install "distribution/functions/_log"
    zsh_function.install "distribution/functions/_error"
    zsh_function.install "distribution/functions/_debug"
    zsh_function.install "distribution/functions/_die"
  end

  test do
    system "true"
  end
end
