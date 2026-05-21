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

  test do
    assert_match(/Horizon AI v/, shell_output("#{bin}/horizon version"))
  end
end
