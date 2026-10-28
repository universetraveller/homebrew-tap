cask "macam" do
  version "0.3.0"
  sha256 "7f21003f02780e0d705f402a7b99dec79c71b659c68adb43951d188bc5dc745d"

  url "https://github.com/universetraveller/macam/releases/download/v#{version}/Macam-#{version}-arm64.zip"
  name "Macam"
  desc "Mirror Mac audio to a stereo input while preserving original playback"
  homepage "https://github.com/universetraveller/macam"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Macam.app"

  uninstall quit: "org.macam.Macam"

  caveats <<~EOS
    Requires macOS 14.2 or later.
    Macam is ad-hoc signed and not notarized.
    If macOS blocks launch, try opening it once, then use
    System Settings > Privacy & Security > Open Anyway if you trust the download.
    Launch Macam manually and allow System Audio Recording when you click Start.
    Quit Macam before upgrading. Preferences are preserved on uninstall.
  EOS
end
