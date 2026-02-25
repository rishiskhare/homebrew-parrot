cask "parrot" do
  version "26.2.4"

  sha256 "10fac2409d0b6265f2ab7fc6897ca7189ea03d37e4b1f5510b43bf1d5d55367b"
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
