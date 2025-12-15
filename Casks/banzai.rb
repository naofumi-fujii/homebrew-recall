cask "banzai" do
  version "1.2.6"
  sha256 "562139c7ba96710369cb39fb09fa4ccef3f23bfb6d00d729463ad509f9f0960a"

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
