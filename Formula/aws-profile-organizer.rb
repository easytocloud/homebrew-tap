class AwsProfileOrganizer < Formula
  desc "AWS Profile Organizer"
  homepage "https://github.com/easytocloud/aws-profile-organizer.git"
  license "MIT"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/v0.1.6.zip"
  sha256 "cbc5ad011e6b529f7177062fd7453187a763c35bbec4d72e30e481c2abcede38"
  version '0.1.6'

  def install

    bin.install "distribution/bin/aws-profile-organizer-setup"
    bin.install "distribution/bin/aws-profile-organizer-rc"

    zsh_function.install "distribution/functions/awsenv"
    zsh_function.install "distribution/functions/awsprofile"
    zsh_function.install "distribution/functions/awsmfa"

    zsh_function.install "distribution/functions/_log"
    zsh_function.install "distribution/functions/_error"
    zsh_function.install "distribution/functions/_debug"
    zsh_function.install "distribution/functions/_die"
  end

  test do
    system "true"
  end
end
