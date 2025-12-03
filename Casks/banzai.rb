cask "banzai" do
  version "0.10.1"
  sha256 "f1d2069cd536ccabb249e2ae4b9c2b64fbd80a2563b746daee122218ce26c051"

  url "https://github.com/naofumi-fujii/banzai/releases/download/v#{version}/Banzai-v#{version}.zip"
  name "Banzai"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/banzai"

  app "Banzai.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Banzai.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/banzai",
  ]
end
