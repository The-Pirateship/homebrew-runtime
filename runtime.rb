class Runtime < Formula
  desc "Runtime - the awesome tool to spawn zellij tabs for your project"
  homepage "https://github.com/The-Pirateship/runtime"
  url "https://github.com/The-Pirateship/runtime/releases/download/v0.0.2/runtime_Darwin_arm64.tar.gz"
  sha256 "6f699821ccafbfb4bc588843727a6ccf703cbbbe8324a7d45af908f3196b3bd9"
  license "MIT"

  # For Linux bottles (optional, can add later)
  # url "https://github.com/yourusername/yourcli/releases/download/v0.1.0/YourCLI_Linux_x86_64.tar.gz"
  # sha256 "PUT_SHA256_HERE"

  def install
    bin.install "runtime"
  end

  test do
    system "#{bin}/runtime", "--help"
  end
end
