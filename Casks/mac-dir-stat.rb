cask "mac-dir-stat" do
  version "0.6.0"
  sha256 "618c6c3ae8b2ec14b2ddd4f6d75d9da47cbb00307a80e2e0625772654f416882"

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
  binary "#{appdir}/MacDirStat.app/Contents/MacOS/mac-dir-stat"

  zap trash: [
    "~/Library/Application Support/mac-dir-stat",
    "~/Library/Application Support/MacDirStat",
    "~/Library/Preferences/sk.dravecky.mac-dir-stat.plist",
    "~/Library/Saved Application State/sk.dravecky.mac-dir-stat.savedState",
  ]
end
