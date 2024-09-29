# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.10.tar.gz"
  sha256 "6e77f95cbe71f7d585eba526ab4e8903e6ea36e495e885c69c2d218c33594d6a"
  license "MIT"

  def install
    ohmyzsh = ENV["HOME"] + "/.oh-my-zsh"

(ohmyzsh/"custom/plugins/easytocloud").install Dir["plugins/easytocloud/*"]
(ohmyzsh/"custom/themes").install "themes/easytocloud.zsh-theme"

(share/"doc/oh-my-easytocloud").install "README.md"

inreplace "#{ohmyzsh}/custom/plugins/easytocloud/easytocloud.plugin.zsh",
  'source "${0:A:h}/easytocloud.plugin.zsh"',
  "source #{ENV["HOME"]}/.oh-my-zsh/custom/plugins/easytocloud/easytocloud.plugin.zsh"
  end

  test do
    system "test", "-f", "#{ENV["HOME"]}/.oh-my-zsh/custom/plugins/easytocloud/easytocloud.plugin.zsh"
system "test", "-f", "#{ENV["HOME"]}/.oh-my-zsh/custom/themes/easytocloud.zsh-theme"
  end
end