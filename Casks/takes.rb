cask "takes" do
  version "0.5.0"
  sha256 "3e31a7cc35e18eca94222b003c5da1ddebedfb25b06295aa393252aa1c3d6efe"

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
