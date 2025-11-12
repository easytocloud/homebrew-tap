class LayoutUv < Formula
  desc "Direnv layout function for uv Python environments"
  homepage "https://github.com/easytocloud/layout_uv"
  url "https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "923fbd79b4764b18d8010b94f6e4327a1f8be996c88fff41551837011a176881"
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
