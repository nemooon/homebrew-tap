cask "hako" do
  version "0.2"
  sha256 "df88616684bcf4145d493926dfa91272f96259f3ed7f67b1946605707dca5622"

  url "https://github.com/nemooon/hako/releases/download/v#{version}/Hako-#{version}.zip"
  name "Hako"
  desc "Menu bar app for monitoring and controlling Colima and its containers"
  homepage "https://github.com/nemooon/hako"

  depends_on macos: :sonoma

  app "Hako.app"

  zap trash: "~/Library/Preferences/com.nemooon.hako.plist"

  caveats <<~EOS
    Hako is not signed with an Apple Developer ID.
    If macOS blocks the app on first launch, right-click Hako.app in
    /Applications and choose "Open", or remove the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Hako.app
  EOS
end
