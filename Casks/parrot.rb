cask "parrot" do
  version "2026.2.1"

  on_arm do
    sha256 "REPLACE_WITH_ARM_DMG_SHA256"
    url "https://github.com/rishiskhare/parrot/releases/download/v#{version}/Parrot_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "REPLACE_WITH_INTEL_DMG_SHA256"
    url "https://github.com/rishiskhare/parrot/releases/download/v#{version}/Parrot_#{version}_x86_64.dmg"
  end

  name "Parrot"
  desc "Text-to-speech desktop app powered by Kokoro"
  homepage "https://github.com/rishiskhare/parrot"

  app "Parrot.app"

  zap trash: [
    "~/.config/parrot",
    "~/Library/Application Support/com.rishiskhare.parrot",
    "~/Library/Preferences/com.rishiskhare.parrot.plist",
    "~/Library/Logs/com.rishiskhare.parrot",
    "~/Library/WebKit/com.rishiskhare.parrot",
  ]
end
