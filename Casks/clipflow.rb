cask "clipflow" do
  version "1.1.0"
  sha256 "6734004347b5ece000f97cb105ba27060420ce6852d3e26aad890c041c18832f"

  url "https://github.com/relbns/ClipFlow/releases/download/v#{version}/ClipFlow.dmg"
  name "ClipFlow"
  desc "Clipboard manager and text expander with Hebrew support"
  homepage "https://github.com/relbns/ClipFlow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "ClipFlow.app"

  uninstall quit: "io.benesh.clipflow"

  zap trash: [
    "~/Library/Application Support/ClipFlow",
    "~/Library/Preferences/io.benesh.clipflow.plist",
  ]

  caveats <<~EOS
    ClipFlow is not notarized by Apple yet, so macOS blocks its first launch.
    Open System Settings → Privacy & Security, click Open Anyway and confirm.
    Then grant Accessibility and Input Monitoring when ClipFlow asks.
  EOS
end
