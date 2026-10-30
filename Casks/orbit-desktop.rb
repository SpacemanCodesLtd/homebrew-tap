cask "orbit-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "d8f0135067b3b6e3562932ff997682154d284709c7aed0a1ffb318341e15782d",
         intel: "3352c74e530ee3e4a7ae69c502f41987bd125cc5f5c6b0f9006639148e8867a9"

  url "https://updates.orbitdesktop.com/Orbit-#{version}-#{arch}.dmg"
  name "Orbit"
  desc "Local project workspace for developers"
  homepage "https://orbitdesktop.com/"

  livecheck do
    url "https://updates.orbitdesktop.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "orbit"
  depends_on macos: :ventura

  app "Orbit.app"

  uninstall quit: "com.spacemancodes.orbit"
end
