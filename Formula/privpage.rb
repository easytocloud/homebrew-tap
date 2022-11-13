class Privpage < Formula
  desc "AWS Privacy Pager"
  homepage "https://github.com/easytocloud/privpage.git"
  license "MIT"
  url "https://github.com/easytocloud/privpage/archive/refs/tags/v0.1.2.zip"
  sha256 "f3f374ee6286eaf0a6c97dc799ec2d72edb7fe1f638c606a080e9f852ac6723b"
  version '0.1.2'

  def install

    bin.install "distribution/bin/privpage"
    bin.install "distribution/bin/whoiam"

  end

  test do
    system "true"
  end
end
