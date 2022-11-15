class Akskrotate < Formula
  desc "Rotate AWS Access Keys and Secret Keys with confidence"
  homepage "https://github.com/easytocloud/for-tools.git"
  license "MIT"
  url "https://github.com/easytocloud/akskrotate/archive/refs/tags/v0.1.0.zip"
  version '0.1.0'

  def install

    bin.install "distribution/bin/akskrotate"

  end

  test do
    system "true"
  end
end
