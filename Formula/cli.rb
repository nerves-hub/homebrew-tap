class Cli < Formula
  desc "Command-line interface for the NervesHub platform"
  homepage "https://github.com/nerves-hub/nerves_hub_cli"

  version "3.0.0-rc.1"

  base_download_url = "https://github.com/nerves-hub/nerves_hub_cli/releases/download/v#{version}"

  macos_x86_64_sha = "e53dbff2daa8bef749bb5aa830cb984b7c286462fde9fa930df2a105894dbef1"
  macos_aarch64_sha = "81e7e3410727b2a51cae02f10fbb62316f9632086d6c1b316788f9d06d3c9eb1"
  linux_x86_64_sha = "368fa0dbfac48de4679400e1522544511beeaeda618ed1aee15afab44e0388bb"
  linux_aarch64_sha = "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
