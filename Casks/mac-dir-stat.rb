cask "mac-dir-stat" do
  version "0.3.0"
  sha256 "94f76ac9d7142cbba992a4f37219be9f74f46c5111a670373fa66dfdc3bd69fd"

  url "https://github.com/Chartres/mac-dir-stat/releases/download/v#{version}/MacDirStat-#{version}.dmg"
  name "MacDirStat"
  desc "Treemap directory-size visualizer for macOS"
  homepage "https://github.com/Chartres/mac-dir-stat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "MacDirStat.app"

  zap trash: [
    "~/Library/Application Support/mac-dir-stat",
    "~/Library/Preferences/sk.dravecky.mac-dir-stat.plist",
    "~/Library/Saved Application State/sk.dravecky.mac-dir-stat.savedState",
  ]
end
