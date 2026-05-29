class Horizon < Formula
  desc "Personal AI agent that runs on your machine — local-first, BYOK"
  homepage "https://horizonaai.dev"
  version "0.0.2"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.2/horizon-macos-arm64"
      sha256 "b2353f5f88f1cd2b461bf05ef71e46ac66421358a9d3fc41ee0cba83e71965e4"

      def install
        bin.install "horizon-macos-arm64" => "horizon"
      end
    end

    on_intel do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.2/horizon-macos-x64"
      sha256 "1e8163f855b19bf8a37d39611df7ba0e231625731387d9b805a9675f4f16f1b8"

      def install
        bin.install "horizon-macos-x64" => "horizon"
      end
    end
  end

  on_linux do
    url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.2/horizon-linux-x64"
    sha256 "2ba167706cb1c145563d0b0346540b1ada1fc80bc11edfa0e3d38938f82489d9"

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
