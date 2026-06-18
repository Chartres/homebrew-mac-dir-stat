cask "mac-dir-stat" do
  version "0.5.1"
  sha256 "1f7be0874f3ba8ea4023dfd3fe08fab85b19c0d56eb74e76ed41e61be89b6aaf"

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
