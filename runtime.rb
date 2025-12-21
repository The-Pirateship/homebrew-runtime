class Runtime < Formula
  desc "Runtime - the awesome tool to spawn zellij tabs for your project"
  homepage "https://github.com/The-Pirateship/runtime"
  url "https://github.com/The-Pirateship/runtime/releases/download/v0.0.5/runtime_Darwin_arm64.tar.gz"
  sha256 "243492244125c23255db9a92f7ee249588d93546efe8fea90a8212819304eb9a"
  license "MIT"

  # For Linux bottles (optional, can add later)
  # url "https://github.com/yourusername/yourcli/releases/download/v0.1.0/YourCLI_Linux_x86_64.tar.gz"
  # sha256 "PUT_SHA256_HERE"

  def install
    bin.install "runtime"
    bin.install_symlink "runtime" => "rt"
  end

  test do
    system "#{bin}/runtime", "--help"
  end
end
