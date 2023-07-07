# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class ZshFunctions < Formula
  desc "Common zsh functions"
  homepage "https://github.com/easytocloud/zsh_functions"
  url "https://github.com/easytocloud/zsh_functions/archive/v0.1.8.tar.gz"
  sha256 "53e356e7159a81a185b4fbe88d1f37a1bd73638f5f278ea35b14f55da901329e"
  license "MIT"

  depends_on "bash" => :build

  def install
    zsh_function.install "distribution/functions/_log"
zsh_function.install "distribution/functions/_error"
zsh_function.install "distribution/functions/_debug"
zsh_function.install "distribution/functions/_die"

system "./postinstall"
  end
end
