# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.15.tar.gz"
  sha256 "254a41d5563b0c36635053c33d0bb032f1e67d27744d585eb1f1f8152bdceffc"
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
