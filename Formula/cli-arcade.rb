class CliArcade < Formula
  desc "Terminal arcade game"
  homepage "https://github.com/oilater/cli-arcade"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oilater/cli-arcade/releases/download/v0.1.0/ca-darwin-arm64"
      sha256 "ce2920188a566d496b831712f104d043d1b6230b536442b3c74ea9b7f38e641c"

      def install
        bin.install "ca-darwin-arm64" => "ca"
      end
    elsif Hardware::CPU.intel?
      url "https://github.com/oilater/cli-arcade/releases/download/v0.1.0/ca-darwin-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "ca-darwin-x64" => "ca"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oilater/cli-arcade/releases/download/v0.1.0/ca-linux-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "ca-linux-x64" => "ca"
      end
    end
  end

  test do
    assert_match "CLI Arcade", shell_output("#{bin}/ca guide")
  end
end
