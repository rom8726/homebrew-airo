class Airo < Formula
  desc "Spec-first Golang project scaffold generator"
  homepage "https://github.com/rom8726/airo"
  url "https://github.com/rom8726/airo/releases/download/v1.12.1/airo_darwin_arm64"
  sha256 "4e41069410a89ab5ad4e55dfb47a8b0e45f790f0c518ddc16ac909478757920b"
  license "Apache-2.0"

  def install
    if Hardware::CPU.arm?
      bin.install "airo_darwin_arm64" => "airo"
    else
      odie "This formula only supports Apple Silicon (ARM64) Macs"
    end
  end

  test do
    system "#{bin}/airo", "--version"
  end
end
