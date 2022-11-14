class ForTools < Formula
  desc "AWS for-tools to iterate over multiple accounts/roles/profiles/user"
  homepage "https://github.com/easytocloud/for-tools.git"
  license "MIT"
  url "https://github.com/easytocloud/for-tools/archive/refs/tags/v0.1.0.zip"
  sha256 "ed6d91c8004def67ac7f41b8a18b89a623108f9258c7692756ed5b402fbb8271"
  version '0.1.0'

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
