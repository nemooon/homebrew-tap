cask "hako" do
  version "0.1"
  sha256 "a1a5ad220ccb9d2f4ce99b7f8c839a07febf5fe1e8c7d4a217016c548b14610a"

  url "https://github.com/nemooon/hako/releases/download/v#{version}/Hako-#{version}.zip"
  name "Hako"
  desc "Menu bar app for monitoring and controlling Colima and its containers"
  homepage "https://github.com/nemooon/hako"

  depends_on macos: ">= :sonoma"

  app "Hako.app"

  caveats <<~EOS
    Hako is not signed with an Apple Developer ID.
    If macOS blocks the app on first launch, right-click Hako.app and
    choose "Open", or install with:
      brew install --cask --no-quarantine nemooon/tap/hako
  EOS

  zap trash: [
    "~/Library/Preferences/com.nemooon.hako.plist",
  ]
end
