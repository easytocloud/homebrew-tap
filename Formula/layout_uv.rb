class LayoutUv < Formula
  desc "Direnv layout function for uv Python environments"
  homepage "https://github.com/easytocloud/layout_uv"
  url "https://github.com/easytocloud/layout_uv/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "bc5481d3313d449c71898cc99706142369c26feea6d55c1b295df6ca2ceeaa68"
  license "MIT"

  def install
    pkgshare.install "distribution/lib/layout_uv.sh"
    bin.install "distribution/bin/install-layout-uv"
  end

  def post_install
    # Automatically install the direnv function to user's config
    return if ENV["HOMEBREW_SANDBOX"]

    direnv_lib = "#{Dir.home}/.config/direnv/lib"
    target_file = "#{direnv_lib}/layout_uv.sh"
    source_file = "#{pkgshare}/layout_uv.sh"

    begin
      FileUtils.mkdir_p(direnv_lib)
      FileUtils.cp(source_file, target_file)
      ohai "✓ layout_uv function installed to #{target_file}"
    rescue => e
      opoo "Could not auto-install layout_uv function: #{e.message}"
      opoo "Run 'install-layout-uv' manually to complete installation"
    end
  end

  test do
    assert_predicate pkgshare/"layout_uv.sh", :exist?
  end
end
