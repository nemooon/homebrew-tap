cask "track" do
  version "0.4.0"
  sha256 "8de535c1317a81f1388c0b18396f4972b7dc4edd6676c75be44544f109fcb61f"

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
