# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class ForTools < Formula
  desc "Aws cli tools to iterate over multiple profiles, roles, users or aws organizatio"
  homepage "https://github.com/easytocloud/for-tools"
  url "https://github.com/easytocloud/for-tools/archive/v0.2.0.tar.gz"
  sha256 "46ebcd9531c7154ceaf28ce4a4402079e37aa7f847ea11563f50bc5a88dd2fee"
  license "MIT"

  depends_on "bash" => :build

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
