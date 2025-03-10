# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class SsoTools < Formula
  desc "Sso tools for use in aws ec2 instances"
  homepage "https://github.com/easytocloud/sso-tools"
  url "https://github.com/easytocloud/sso-tools/archive/refs/tags/v0.7.7.tar.gz"
  sha256 "7ec5fc144003fa64ab8699fb91d710a94874e9f91bd0ce9120e341ea6254185e"

  depends_on "direnv"
  depends_on "easytocloud/tap/codecommit-utils"
  depends_on "jq"

  def install
    bin.install "distribution/bin/ssostart"
bin.install "distribution/bin/generate-sso-config"
zsh_completion.install "distribution/completions/_generate-sso-config"
  end
end
