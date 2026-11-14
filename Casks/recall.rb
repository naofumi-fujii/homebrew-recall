cask "recall" do
  version "2.1.25"
  sha256 "e0f8ed6506670233b519e4d64036475ec15f5184bd294ed3551a51649d23bc0c"

  url "https://github.com/naofumi-fujii/recall/releases/download/v#{version}/Recall-v#{version}.zip"
  name "Recall"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/recall"

  app "Recall.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Recall.app"]
  end

  uninstall quit: "com.recall.clipboard"

  zap trash: [
    "~/Library/Application Support/recall",
  ]
end
