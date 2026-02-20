cask "memorybar" do
  version "1.0.0"
  sha256 "eb21ef8b0bf7650bbcb81ee9510932e9dffe14ef54e12b1c5bfc35822a7f967f"

  url "https://github.com/n0xer90/MemoryBar/releases/download/v#{version}/MemoryBar.app.zip"
  name "MemoryBar"
  desc "Lightweight macOS menu bar app for real-time memory & CPU monitoring"
  homepage "https://github.com/n0xer90/MemoryBar"

  depends_on macos: ">= :monterey"

  app "MemoryBar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.memorybar.app.plist",
    "~/Library/Preferences/com.memorybar.app.plist",
  ]
end
