class Runtime < Formula
  desc "Runtime - the awesome tool to spawn zellij tabs for your project"
  homepage "https://github.com/The-Pirateship/runtime"
  url "https://github.com/The-Pirateship/runtime/releases/download/v0.0.6/runtime_Darwin_arm64.tar.gz"
  sha256 "2fcfe193880f8f0c694a4de6c47146b54ad468f9468ccef06834c94f67cad5bb"
  license "MIT"

  # For Linux bottles (optional, can add later)
  # url "https://github.com/yourusername/yourcli/releases/download/v0.1.0/YourCLI_Linux_x86_64.tar.gz"
  # sha256 "PUT_SHA256_HERE"

  depends_on "zellij"

  def install
    bin.install "runtime"
    bin.install_symlink "runtime" => "rt"
  end

  test do
    system "#{bin}/runtime", "--help"
  end
end
