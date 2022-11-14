class ForTools < Formula
  desc "AWS for-tools to iterate over multiple accounts/roles/profiles/user"
  homepage "https://github.com/easytocloud/for-tools.git"
  license "MIT"
  url "https://github.com/easytocloud/for-tools/archive/refs/tags/v0.1.1.zip"
  sha256 "caebfafcd040c14fb54ab9bcd4617bb0765b173e3b8c4a542bfe9443132b2e5f"
  version '0.1.1'

  def install

    bin.install "distribution/bin/for-tools"
    bin.install "distribution/bin/for-iamusers"
    bin.install "distribution/bin/for-iamroles"
    bin.install "distribution/bin/for-profiles"
    bin.install "distribution/bin/for-org_accts"

  end

  test do
    system "true"
  end
end
