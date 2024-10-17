# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Privpage < Formula
  desc "Aws pager masking privacy sensitive information"
  homepage "https://github.com/easytocloud/privpage"
  url "https://github.com/easytocloud/privpage/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "bdcf817f7cfdce2768af96ebdf9b494c8de1845b0f55462a969daba498a3e2c4"
  license "MIT"

  def install
    bin.install "distribution/bin/privpage"
bin.install "distribution/bin/whoiam"
  end
end
