class Nh < Formula
  desc "Command-line interface for the NervesHub platform"
  homepage "https://github.com/nerves-hub/nerves_hub_cli"

  version "3.1.0"

  base_download_url = "https://github.com/nerves-hub/nerves_hub_cli/releases/download/v#{version}"

  macos_x86_64_sha = "e7b1ed51ef01b8d71a2e2444078980bb68acfa56a5e5958f726e55f453f00c6d"
  macos_aarch64_sha = "36b0356f2b78eb6435555e21ee6c354ef4b6e63234b33f830a4b3c700bf0473a"
  linux_x86_64_sha = "1662c4a72aa55c339e083f7a30fb35235f58c1f31ee1af33791226961bb26396"
  linux_aarch64_sha = "d20d4e4cf2762b879fafb285fdf948b694f84b2b810048c5eaacd35aef33b784"

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
