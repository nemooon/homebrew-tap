cask "track" do
  version "0.8.0"
  sha256 "3f2dabcfd2b90d5451a9189e6b6dc707e5f0d86933fd12c2b64b42a5edca718c"

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
