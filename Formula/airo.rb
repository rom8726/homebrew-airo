class Airo < Formula
  desc "Spec-first Golang project scaffold generator"
  homepage "https://github.com/rom8726/airo"
  url "https://github.com/rom8726/airo/releases/download/v1.12.0/airo_darwin_arm64"
  sha256 "b2f79dc4448fe26d10191f520b6c93f5ad1058622f4cac4cc27da47daf9b56a8"
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
