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
    Hako requires macOS 14.4 or later. Homebrew can only depend on major
    versions, so this cask installs on any macOS 14, but the app will not
    launch on 14.0 through 14.3.

    Hako is not signed with an Apple Developer ID, so macOS quarantines it
    and refuses to open it. Remove the quarantine flag before first launch:

      xattr -dr com.apple.quarantine /Applications/Hako.app

    Alternatively, try to open the app, then go to System Settings >
    Privacy & Security and click "Open Anyway" under Security.

    (Control-clicking the app and choosing "Open" no longer works: macOS
    Sequoia removed that bypass.)
  EOS
end
