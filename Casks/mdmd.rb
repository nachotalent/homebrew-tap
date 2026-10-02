cask "mdmd" do
  version "1.6"
  sha256 "b440881323ea4394c4c5d454109a2c9c0653ecdb68c732cd0005feab5ad9346d"

  url "https://www.mdmd.app/downloads/mdMD-#{version}.dmg"
  name "mdMD"
  desc "Native markdown editor with synced split view and offline Mermaid diagrams"
  homepage "https://www.mdmd.app/"

  livecheck do
    url "https://www.mdmd.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "mdMD.app"

  zap trash: [
    "~/Library/Caches/co.zappyhour.mdMD",
    "~/Library/Containers/co.zappyhour.mdMD",
    "~/Library/HTTPStorages/co.zappyhour.mdMD",
    "~/Library/Preferences/co.zappyhour.mdMD.plist",
    "~/Library/Saved Application State/co.zappyhour.mdMD.savedState",
    "~/Library/WebKit/co.zappyhour.mdMD",
  ]
end
