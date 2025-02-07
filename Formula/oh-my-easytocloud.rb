# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.14.tar.gz"
  sha256 "e03ca1a3a9c4f1acb7323e321873c27929d1bec8341c834944516e1199c5a992"
  license "MIT"

  def install
    ohmyzsh = "~/.oh-my-zsh"

system "mkdir", "-p", ohmyzsh + "/custom/plugins/easytocloud"
system "cp", "-R", "plugins/easytocloud/.", ohmyzsh + "/custom/plugins/easytocloud/"

system "mkdir", "-p", ohmyzsh + "/custom/themes"
system "cp", "themes/easytocloud.zsh-theme", ohmyzsh + "/custom/themes/"

(share/"doc/oh-my-easytocloud").install "README.md"
  end

  test do
    system "test", "-f", ENV["HOME"] + "/.oh-my-zsh/custom/plugins/easytocloud/easytocloud.plugin.zsh"
system "test", "-f", ENV["HOME"] + "/.oh-my-zsh/custom/themes/easytocloud.zsh-theme"
  end
end
