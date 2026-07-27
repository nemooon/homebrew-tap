cask "track" do
  version "0.3.0"
  sha256 "616c44d68b0d91aeffdbb2473314e6ffb50288acd490103314d2edc11f0a14c0"

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
