cask "clipflow" do
  version "1.2.0"
  sha256 "5b4c231788279c8bfbe8312c93b7c19f27d6e3a44a96bc0e6c73f7b2ef73f93e"

  url "https://github.com/relbns/ClipFlow/releases/download/v#{version}/ClipFlow.dmg"
  name "ClipFlow"
  desc "Clipboard manager and text expander with Hebrew support"
  homepage "https://github.com/relbns/ClipFlow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipFlow.app"

  uninstall quit: "io.benesh.clipflow"

  zap trash: [
    "~/Library/Application Scripts/io.benesh.clipflow",
    "~/Library/Application Support/ClipFlow",
    "~/Library/Caches/io.benesh.clipflow",
    "~/Library/Containers/io.benesh.clipflow",
    "~/Library/HTTPStorages/io.benesh.clipflow",
    "~/Library/Preferences/io.benesh.clipflow.plist",
    "~/Library/Saved Application State/io.benesh.clipflow.savedState",
  ]

  caveats <<~EOS
    ClipFlow is not notarized by Apple yet, so macOS blocks its first launch.
    Open System Settings → Privacy & Security, click Open Anyway and confirm.
    Then grant Accessibility and Input Monitoring when ClipFlow asks.
  EOS
end
