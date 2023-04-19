# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Cloud9ToPowerVscodeBlog < Formula
  desc "Artifacts used in the blog post use aws cloud9 to power your visual studio code"
  homepage "https://github.com/easytocloud/cloud9-to-power-vscode-blog"
  url "https://github.com/easytocloud/cloud9-to-power-vscode-blog/archive/v0.1.3.tar.gz"
  sha256 "5d2f27515582679075879236e9941e43f9c8d46502df2360af24fd106cac53af"
  license "MIT-0"

  depends_on "bash" => :build

  def install
    bin.install "distribution/bin/aws-proxy.sh"
bin.install "distribution/bin/cloud9-mod.json"
  end
end
