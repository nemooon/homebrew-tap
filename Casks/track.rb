cask "track" do
  version "0.2.0"
  sha256 "461e1f3e507725f5d2df3a508ad53da0af90ec7af8f8095e5b7b925dbbe56964"

  url "https://github.com/nemooon/track/releases/download/v#{version}/Track-#{version}.zip"
  name "Track"
  desc "Local-first time tracking app"
  homepage "https://github.com/nemooon/track"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Track.app"

  uninstall quit: "dev.nemoto.track"

  caveats <<~EOS
    Track is not signed with an Apple Developer ID, so macOS may quarantine it
    and refuse to open it. Remove the quarantine flag before first launch:

      xattr -dr com.apple.quarantine "#{appdir}/Track.app"

    Alternatively, try to open the app, then go to System Settings >
    Privacy & Security and click "Open Anyway" under Security.
  EOS
end
