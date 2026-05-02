cask "mac-dir-stat" do
  version "0.4.1"
  sha256 "edc18f55c57e862a14d23037c4bf7e7f1884806e84234eba140efe77bc11a933"

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
