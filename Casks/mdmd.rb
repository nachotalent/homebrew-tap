cask "mdmd" do
  version "1.9"
  sha256 "32f2c49b9a18a7b9ede6f9b3a497cd4c465da06f7f3f1c826cbee292147fa4df"

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
