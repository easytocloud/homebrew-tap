# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class SsoTools < Formula
  desc "Sso tools for use in aws ec2 instances"
  homepage "https://github.com/easytocloud/sso-tools"
  url "https://github.com/easytocloud/sso-tools/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "7993cde91c0f3918353256b628152d856e0d26948bf288230f7e3bd6b057f2ec"

  def install
    bin.install "distribution/bin/ssostart"
bin.install "distribution/bin/cclist"
bin.install "distribution/bin/ccinit"
bin.install "distribution/bin/ccclone"
bin.install "distribution/bin/generate-sso-config"
  end
end
