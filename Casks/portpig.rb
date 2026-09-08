cask "portpig" do
  version "0.3.1"
  sha256 "3bb08ff3988b17a9800389beefd81e57c7ab711f857d46d02226cbf99a1052de"

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
