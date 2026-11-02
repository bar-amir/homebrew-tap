cask "takes" do
  version "0.4.0"
  sha256 "278411e64cd9c8551407c8912b72cdb7a0c729e115158afa6fb070d3425ac0fb"

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
