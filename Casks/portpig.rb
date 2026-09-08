cask "portpig" do
  version "0.3.3"
  sha256 "43cb1d88765e58d622c35cbaa3219a7c6db1ffc1ea115fdbb830e3c30056be64"

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
