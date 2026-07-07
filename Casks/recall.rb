cask "recall" do
  version "2.1.5"
  sha256 "7b2dbf4ddc577e67213ecf967a25fb63b09d8892ef070c56cf4c1a04fb3d01a1"

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
