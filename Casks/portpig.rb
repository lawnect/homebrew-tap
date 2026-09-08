cask "portpig" do
  version "0.3.2"
  sha256 "3b9eae1bb63379565260abed15decd64a738af3e8d262f1cb65e39480603211f"

  url "https://github.com/lawnect/portpig/releases/download/v#{version}/PortPig-v#{version}.zip"
  name "PortPig"
  desc "Inspect local listening TCP ports and terminate their owning processes"
  homepage "https://github.com/lawnect/portpig"

  depends_on macos: :ventura

  app "PortPig.app"

  zap trash: [
    "~/Library/Preferences/com.lawnect.myports.app.plist",
    "~/Library/Preferences/com.lawnect.portpig.plist",
    "~/Library/Preferences/com.myports.app.plist",
  ]
end
