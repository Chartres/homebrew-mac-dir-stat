cask "mac-dir-stat" do
  version "0.4.2"
  sha256 "39922a16ef43ff3feae1776680c4aaefb18613558a023ca8e946eb4a11184678"

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
