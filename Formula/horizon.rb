class Horizon < Formula
  desc "Personal AI agent that runs on your machine — local-first, BYOK"
  homepage "https://horizonaai.dev"
  version "0.0.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-macos-arm64"
      sha256 "22792e193427665b2c6b0cc88ab1cc5aa50bbc2564ed07ef6bc9374ada770e95"

      def install
        bin.install "horizon-macos-arm64" => "horizon"
      end
    end

    on_intel do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-macos-x64"
      sha256 "64dc0884020e0cc30e05322b4541751e42f3041944c1a10dc33b9c29dec7f9f9"

      def install
        bin.install "horizon-macos-x64" => "horizon"
      end
    end
  end

  on_linux do
    url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-linux-x64"
    sha256 "53b81e3911895559ee9a90d3b05b97683022b7a33b59458409dae7602c286ad5"

    def install
      bin.install "horizon-linux-x64" => "horizon"
    end
  end

  def caveats
    <<~EOS
      Horizon AI is installed. Getting started:

        horizon setup       # add your first AI provider key (30 seconds)
        horizon             # launch the interactive TUI
        horizon mobile      # pair a phone via QR code

      Keys and memory live in your OS user data directory:
        macOS:  ~/Library/Application Support/horizon-ai/
        Linux:  ~/.config/horizon-ai/

      Docs:    https://horizonaai.dev/docs
      Issues:  https://github.com/ErnestKostevich/horizon-genesis/issues
      License: BUSL-1.1 (personal + non-commercial use is free)
    EOS
  end

  test do
    assert_match(/Horizon AI v/, shell_output("#{bin}/horizon version"))
  end
end
