cask "banzai" do
  version "1.2.0"
  sha256 "a92e942d054f828d4e82820ca398a8ffe1393dd7689ef345dcb49d18d4039b3c"

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
