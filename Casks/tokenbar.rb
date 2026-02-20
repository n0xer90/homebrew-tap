cask "tokenbar" do
  version "1.0.0"
  sha256 "d3d3ce24f4375fa67e773c25fdeb6ea01e559688ca0fc0f75a92ae61a2050986"

  url "https://github.com/n0xer90/TokenBar/releases/download/v#{version}/TokenBar.app.zip"
  name "TokenBar"
  desc "Track AI token usage and costs from your macOS menu bar"
  homepage "https://github.com/n0xer90/TokenBar"

  depends_on macos: ">= :monterey"

  app "TokenBar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.tokenbar.app.plist",
    "~/Library/Preferences/com.tokenbar.app.plist",
  ]
end
