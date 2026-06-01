class Horizon < Formula
  desc "Personal AI agent that runs on your machine — local-first, BYOK"
  homepage "https://horizonaai.dev"
  version "0.0.3"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.3/horizon-macos-arm64"
      sha256 "daf9341fb8e24581e810b8e6daf1b6f65cf211ba43638c6ba0a43637479e3dcf"

      def install
        bin.install "horizon-macos-arm64" => "horizon"
      end
    end

    on_intel do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.3/horizon-macos-x64"
      sha256 "8c5294f575e3c6c7ff3d43524b4df45ddaa3efeb58e9301f757f488a71932096"

      def install
        bin.install "horizon-macos-x64" => "horizon"
      end
    end
  end

  on_linux do
    url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.3/horizon-linux-x64"
    sha256 "02b01fef7e8039edd31534b88951178a61aa2b573c9297e30e5c3c1cb5b2e87f"

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
