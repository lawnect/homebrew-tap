cask "portpig" do
  version "0.3.0"
  sha256 "1781c7933fed5c5f191fa2b7999273ceb16a2daacf49f924adad9160831dddbc"

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
