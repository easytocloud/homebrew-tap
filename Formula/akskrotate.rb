# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Akskrotate < Formula
  desc "Rotate your aws access key / secret key with confidence"
  homepage "https://github.com/easytocloud/akskrotate"
  url "https://github.com/easytocloud/akskrotate/archive/v0.1.3.tar.gz"
  sha256 "e53bc00b0982b3cbf62cd5c22a15f549313ff2bf891b466b83f135b0264d5638"
  license "MIT"

  depends_on "bash" => :build

  def install
    bin.install "distribution/bin/akskrotate" => "akskrotate"
  end

  test do
    assert_match("Please set AWS_PROFILE before calling akskrotate", shell_output("akskrotate 2>&1", 1))
  end
end
