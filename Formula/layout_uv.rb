Waiting for release tarball to be available...
URL: https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.3.tar.gz
SHA256: e575af33b8ab69eec3c6d76a4d5a37e50feab537136b5231c4a44fc8b6e64c0e
class LayoutUv < Formula
  desc "Direnv layout function for uv Python environments"
  homepage "https://github.com/easytocloud/layout_uv"
  url "https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "e575af33b8ab69eec3c6d76a4d5a37e50feab537136b5231c4a44fc8b6e64c0e"
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
