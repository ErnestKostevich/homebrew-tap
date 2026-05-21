class Horizon < Formula
  desc "Personal AI agent that runs on your machine — local-first, BYOK"
  homepage "https://horizonaai.dev"
  version "0.0.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-macos-arm64"
      sha256 "d3d5717629832bb9ee613bd76c8075bdf1e568846ef509df2b4237f0bdfc3777"

      def install
        bin.install "horizon-macos-arm64" => "horizon"
      end
    end

    on_intel do
      url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-macos-x64"
      sha256 "4af593b4ceb8d588b3330703186606c95b7d0bf0ce91ebc4071660bd1098ac58"

      def install
        bin.install "horizon-macos-x64" => "horizon"
      end
    end
  end

  on_linux do
    url "https://github.com/ErnestKostevich/horizon-genesis/releases/download/cli-v0.0.1/horizon-linux-x64"
    sha256 "4669ade331f2245805421149d7344cb8095ba85d30b1ee705c3b6ef7c5d11caa"

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
