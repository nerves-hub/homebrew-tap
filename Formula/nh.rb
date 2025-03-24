class Nh < Formula
  desc "Command-line interface for the NervesHub platform"
  homepage "https://github.com/nerves-hub/nerves_hub_cli"

  version "3.0.0"

  base_download_url = "https://github.com/nerves-hub/nerves_hub_cli/releases/download/v#{version}"

  macos_x86_64_sha = "0afbae55145c6f475158291f8502aa203945431108358cc5ded1013c111105c8"
  macos_aarch64_sha = "002302f852fb1b20332b84bdfa989ee9eef23463a5e780d34e7687cd170b8131"
  linux_x86_64_sha = "0d2192641c66467b222585112fddf185649789fa58b2e8c907a1acb42b2bd315"
  linux_aarch64_sha = "d8a6090cd2c29546c02bdcddb822e148e562d12594e734b3ccb46f122b598f8d"

  if OS.mac? && Hardware::CPU.intel?
    url "#{base_download_url}/macos-x86_64.tar.xz"
    sha256 macos_x86_64_sha
  end

  if OS.mac? && Hardware::CPU.arm?
    url "#{base_download_url}/macos-aarch64.tar.xz"
    sha256 macos_aarch64_sha
  end

  if OS.linux? && Hardware::CPU.intel?
    url "#{base_download_url}/linux-x86_64.tar.xz"
    sha256 linux_x86_64_sha
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "#{base_download_url}/linux-aarch64.tar.xz"
    sha256 linux_aarch64_sha
  end

  def install
    bin.install "nh"
  end
end
