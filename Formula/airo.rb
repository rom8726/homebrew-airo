class Airo < Formula
  desc "Spec-first Golang project scaffold generator"
  homepage "https://github.com/rom8726/airo"
  url "https://github.com/rom8726/airo/releases/download/v1.12.0/airo_darwin_amd64"
  sha256 "53e196bfa025c479d75b0e6670408acf1dae4b69b4459a4db55f9d89d0d87391"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/rom8726/airo/releases/download/v1.12.0/airo_darwin_arm64"
    sha256 "b2f79dc4448fe26d10191f520b6c93f5ad1058622f4cac4cc27da47daf9b56a8"
  end

  def install
    bin.install "airo_darwin_#{Hardware::CPU.arch == "arm64" ? "arm64" : "amd64"}" => "airo"
  end

  test do
    system "#{bin}/airo", "--version"
  end
end
