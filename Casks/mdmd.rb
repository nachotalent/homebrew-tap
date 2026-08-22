cask "mdmd" do
  version "1.3"
  sha256 "eaffd4bc283276b6633e3a4d503279e5077ea32930c6d849ddd058f303daaae1"

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
