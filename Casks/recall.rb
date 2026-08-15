cask "recall" do
  version "2.1.12"
  sha256 "0402fe3bf34567a334bbe1d5509d0ec542ecb877d44fecee503fdf3ac7f0c5f1"

  url "https://github.com/naofumi-fujii/recall/releases/download/v#{version}/Recall-v#{version}.zip"
  name "Recall"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/recall"

  app "Recall.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Recall.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/recall",
  ]
end
