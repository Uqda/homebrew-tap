cask "uqda" do
  arch arm: "arm64", intel: "amd64"
  version "26.0.0"
  sha256 arm:   "e1a7ddd7c133d3d0c284ac0040df8e3bb444b9f2eef53a6e9431d4996bb0be28",
         intel: "cb3165e5ddc48af1c35341516b718370a6d2a2b08d0588cae723c4c045fd6cdb"
  url "https://github.com/Uqda/Core/releases/download/v#{version}/uqda-#{version}-macos-#{arch}.pkg"

  name "Uqda Core"
  desc "Encrypted IPv6 networking compatible with Yggdrasil"
  homepage "https://github.com/Uqda/Core"

  pkg "uqda-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "io.github.uqda.core",
            pkgutil:   "io.github.uqda.core"

  # A normal uninstall retains the node identity.
  zap delete: ["/etc/uqda", "/Library/Logs/Uqda"]
end
