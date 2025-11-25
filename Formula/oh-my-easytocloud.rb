# typed: true
# frozen_string_literal: true

class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.19.tar.gz"
  sha256 "af82913d74ee4e4601950d03687677406efd3c61ee0692cf1507fa2569ba2e80"
  license "MIT"

  def install
    ohmyzsh = ENV["HOME"] + "/.oh-my-zsh"

    system "mkdir", "-p", ohmyzsh + "/custom/plugins/easytocloud"
    system "cp", "-R", "plugins/easytocloud/.", ohmyzsh + "/custom/plugins/easytocloud/"

    system "mkdir", "-p", ohmyzsh + "/custom/themes"
    system "cp", "themes/easytocloud.zsh-theme", ohmyzsh + "/custom/themes/"

    (share/"doc/oh-my-easytocloud").install "README.md"
  end

  def caveats
    <<~EOS
      The theme and plugin have been installed to ~/.oh-my-zsh/custom/

      To activate, set in your ~/.zshrc:
        ZSH_THEME="easytocloud"
        plugins=(... easytocloud ...)
    EOS
  end

  test do
    system "test", "-f", ENV["HOME"] + "/.oh-my-zsh/custom/plugins/easytocloud/easytocloud.plugin.zsh"
    system "test", "-f", ENV["HOME"] + "/.oh-my-zsh/custom/themes/easytocloud.zsh-theme"
  end
end
