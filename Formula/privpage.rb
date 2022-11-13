class Privpage < Formula
  desc "AWS Privacy Pager"
  homepage "https://github.com/easytocloud/privpage.git"
  license "MIT"
  url "https://github.com/easytocloud/privpage/archive/refs/tags/v0.1.1.zip"
  sha256 "5761bec378abe9cade48de0c8832f1b06f9c13089157d59252454fbde4e7990c"
  version '0.1.1'

  def install

    bin.install "distribution/bin/privpage"
    bin.install "distribution/bin/whoiam"

  end

  test do
    system "true"
  end
end
