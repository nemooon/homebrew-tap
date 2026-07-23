cask "track" do
  version "0.2.1"
  sha256 "ceac0fdd4f1fdb2aeeb0c0eddb4e1a0fd307c27fb159101bb02e56571093c259"

  url "https://github.com/nemooon/track/releases/download/v#{version}/Track-#{version}.zip"
  name "Track"
  desc "Local-first time tracking app"
  homepage "https://github.com/nemooon/track"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Track.app"

  uninstall quit: "com.nemooon.track"

  caveats <<~EOS
    Track is not signed with an Apple Developer ID, so macOS may quarantine it
    and refuse to open it. Remove the quarantine flag before first launch:

      xattr -dr com.apple.quarantine "#{appdir}/Track.app"

    Alternatively, try to open the app, then go to System Settings >
    Privacy & Security and click "Open Anyway" under Security.
  EOS
end
