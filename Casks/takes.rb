cask "takes" do
  version "0.9.0"
  sha256 "22bc435556ce46233431a6eff5185c1bb3d015d95759e7fcb36e767799355ead"

  url "https://github.com/bar-amir/takes/releases/download/v#{version}/Takes-#{version}.dmg"
  name "Takes"
  desc "Write drafts in any text field and pick from several AI-written takes"
  homepage "https://github.com/bar-amir/takes"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Takes.app"

  uninstall quit: "com.baramir.takes"

  zap trash: [
    "~/Library/Application Support/Takes",
    "~/Library/Caches/com.baramir.takes",
    "~/Library/HTTPStorages/com.baramir.takes",
    "~/Library/HTTPStorages/com.baramir.takes.binarycookies",
    "~/Library/Logs/Takes",
    "~/Library/Preferences/com.baramir.takes.plist",
    "~/Library/Saved Application State/com.baramir.takes.savedState",
  ]
end
