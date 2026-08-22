cask "mdmd" do
  version "1.2"
  sha256 "d900bdf8cbe958cbf28ded0232016f9a99d7e7ce6e68f66f35b62597dda3f9ac"

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
