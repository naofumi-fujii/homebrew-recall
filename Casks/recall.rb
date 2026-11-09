cask "recall" do
  version "2.1.24"
  sha256 "1fbe000ee34b59ddea980e31307302ac6bb50dd6cd06fc0aa5f2843230159c7c"

  url "https://github.com/naofumi-fujii/recall/releases/download/v#{version}/Recall-v#{version}.zip"
  name "Recall"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/recall"

  app "Recall.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Recall.app"]
  end

  zap trash: [
    "~/Library/Application Support/recall",
  ]
end
