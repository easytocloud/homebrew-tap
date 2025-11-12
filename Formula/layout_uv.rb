Waiting for release tarball to be available...
URL: https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.2.tar.gz
SHA256: 97413b5981f474e12e554133b96f39f99368aad8e53583331e42f5207f1e338b
class LayoutUv < Formula
  desc "Direnv layout function for uv Python environments"
  homepage "https://github.com/easytocloud/layout_uv"
  url "https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "97413b5981f474e12e554133b96f39f99368aad8e53583331e42f5207f1e338b"
  license "MIT"

  def install
    pkgshare.install "distribution/lib/layout_uv.sh"
    bin.install "distribution/bin/install-layout-uv"
  end

  def post_install
    # Automatically install the direnv function to user's config
    direnv_lib = "#{Dir.home}/.config/direnv/lib"
    FileUtils.mkdir_p(direnv_lib)
    FileUtils.cp("#{pkgshare}/layout_uv.sh", "#{direnv_lib}/layout_uv.sh")
    ohai "✓ layout_uv function installed to #{direnv_lib}/layout_uv.sh"
  end

  test do
    assert_predicate pkgshare/"layout_uv.sh", :exist?
  end
end

Formula generated successfully!
