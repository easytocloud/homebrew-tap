class Awsprofileorganizer < Formula
  desc "AWS Profile Organizer"
  homepage "http://easytocloud.com"
  license "MIT"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/brew.zip"
  sha256 "d87345035cd55b9540ba0290cde66c5bb7d381a025ec9e9ac7718d454d75884c"
  version '0.0.1'

  depends_on "awscli" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test AWSProfileOrganizer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
