# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class ForTools < Formula
  desc "Aws cli tools to iterate over multiple profiles, roles, users or aws organizatio"
  homepage "https://github.com/easytocloud/for-tools"
  url "https://github.com/easytocloud/for-tools/archive/refs/tags/v0.2.9.tar.gz"
  sha256 "7f526de56658e8e9cf4a3d68e4c1f73c0aab8cd237c5efb2b475dff7f885446f"
  license "MIT"

  depends_on "bash" => :build
  depends_on "easytocloud/tap/zsh_functions"

  def install
    bin.install "distribution/bin/for-tools"
bin.install "distribution/bin/for-iamusers"
bin.install "distribution/bin/for-iamroles"
bin.install "distribution/bin/for-profiles"
bin.install "distribution/bin/for-org_accts"
bin.install "distribution/bin/ac2name"
bin.install "distribution/bin/name2ac"
  end
end
