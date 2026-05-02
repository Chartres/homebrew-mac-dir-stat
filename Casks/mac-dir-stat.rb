cask "mac-dir-stat" do
  version "0.1.0"
  sha256 "e5fd3b1ff473e413b135edc2aa03c70ecb6766f48e4dd39ca20ac5de9e27da5a"

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
