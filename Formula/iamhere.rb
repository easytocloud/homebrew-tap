# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Iamhere < Formula
  desc "Tag-based change security group to allow traffic from your current ip address"
  homepage "https://github.com/easytocloud/iamhere"
  url "https://github.com/easytocloud/iamhere/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "a3edeeba2d2d9932420a867aae1a0cdd5746942221488fbd6326057e079d2b96"
  license "MIT"

  depends_on "bash" => :build

  def install
    bin.install "distribution/bin/iamhere"
  end
end
