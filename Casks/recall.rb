cask "recall" do
  version "2.0.4"
  sha256 "83abdd6289d097651418b1f95fdf2f899a48b1319b48ee7f314ce5c205356239"

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
