class Shaderc < Formula
  desc "A collection of tools, libraries, and tests for Vulkan shader compilation."
  homepage "https://github.com/google/shaderc"
  url "https://storage.googleapis.com/shaderc/artifacts/prod/graphics_shader_compiler/shaderc/macos/continuous_clang_release/373/20210609-071738/install.tgz"
  version "2021.1"
  sha256 "6941a48db29d6891a9ac83b58fd65324d8c1046ac29e3ab27899ab29b58f56b1"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
    lib.install Dir["lib/*"]
  end

  test do
    # shaderc v2021.1-dev v2021.0-11-gaf0afbe
    #  glslc --version
    assert_equal "shaderc v2021.1-dev", shell_output("#{bin}/glslc --version").strip
  end
end
