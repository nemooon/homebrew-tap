cask "neruna" do
  version "0.1"
  sha256 "7b8ba7216fa7cdcb13a33ca5d5ec280086c5187e066a9705cf72d1584501268b"

  url "https://github.com/nemooon/neruna/releases/download/v#{version}/Neruna-#{version}.zip"
  name "Neruna"
  desc "Menu bar app for preventing sleep using caffeinate"
  homepage "https://github.com/nemooon/neruna"

  depends_on macos: :ventura

  app "Neruna.app"

  zap trash: "~/Library/Preferences/com.nemooon.neruna.plist"

  caveats <<~EOS
    Neruna is not signed with an Apple Developer ID, so macOS quarantines it
    and refuses to open it. Remove the quarantine flag before first launch:

      xattr -dr com.apple.quarantine /Applications/Neruna.app

    Alternatively, try to open the app, then go to System Settings >
    Privacy & Security and click "Open Anyway" under Security.

    (Control-clicking the app and choosing "Open" no longer works: macOS
    Sequoia removed that bypass.)
  EOS
end
