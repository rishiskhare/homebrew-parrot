cask "parrot" do
  version "26.2.2"

  sha256 "0706258c12ad8679d266847fc6f46f4ae65a639ec4773862efc681090ac8c6ed"
  url "https://github.com/rishiskhare/parrot/releases/download/v#{version}/Parrot_#{version}_aarch64.dmg"

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
