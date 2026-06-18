cask "recall" do
  version "2.1.1"
  sha256 "0df1d1e8c7df23ca7e65318da7e21ba8b75d14d075f93ddf64d6fd16e7c436eb"

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
