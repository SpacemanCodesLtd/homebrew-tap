cask "orbit-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "86d415d418d3e2cd07f1d78faaaa21151c5548f33c7480bffdbeba3f6f4866cc",
         intel: "0ed2dc51220f471072c342d1c063bac5dd95d03c2bb93a2cbd70a5b8100e14c7"

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
