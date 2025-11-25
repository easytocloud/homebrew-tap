# typed: true
# frozen_string_literal: true

class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.20.tar.gz"
  sha256 "38d670826e78f063f33a01e3929cbafab0b2f2c6d2388eb7157fb13fea71db02"
  license "MIT"

  def install
    # Install to Homebrew's share directory (always works)
    (share/"oh-my-easytocloud/plugins/easytocloud").install Dir["plugins/easytocloud/*"]
    (share/"oh-my-easytocloud/themes").install "themes/easytocloud.zsh-theme"
    (share/"doc/oh-my-easytocloud").install "README.md"
  end

  def post_install
    # post_install runs outside sandbox, so HOME is the real home directory
    ohmyzsh = ENV["HOME"] + "/.oh-my-zsh"
    return unless Dir.exist?(ohmyzsh)

    system "mkdir", "-p", ohmyzsh + "/custom/plugins/easytocloud"
    system "cp", "-R", (share/"oh-my-easytocloud/plugins/easytocloud").to_s + "/.", ohmyzsh + "/custom/plugins/easytocloud/"

    system "mkdir", "-p", ohmyzsh + "/custom/themes"
    system "cp", (share/"oh-my-easytocloud/themes/easytocloud.zsh-theme").to_s, ohmyzsh + "/custom/themes/"
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
    assert_predicate share/"oh-my-easytocloud/plugins/easytocloud/easytocloud.plugin.zsh", :exist?
    assert_predicate share/"oh-my-easytocloud/themes/easytocloud.zsh-theme", :exist?
  end
end
