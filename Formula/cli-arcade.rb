class CliArcade < Formula
  desc "Terminal arcade game"
  homepage "https://github.com/oilater/cli-arcade"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oilater/cli-arcade/releases/download/v0.1.3/ca-darwin-arm64"
      sha256 "b7a275001c95597a07ff8c7b026c0dbd453a995f665bb8d6ca78256553047d98"

      def install
        bin.install "ca-darwin-arm64" => "ca"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oilater/cli-arcade/releases/download/v0.1.3/ca-linux-x64"
      sha256 "76544173a979262ab0f15320c8dc5886e7380a0d73c55dcf5324dc629a036838"

      def install
        bin.install "ca-linux-x64" => "ca"
      end
    end
  end

  test do
    assert_match "CLI Arcade", shell_output("#{bin}/ca guide")
  end
end
