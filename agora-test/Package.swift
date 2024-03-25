// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "Tuist",
  dependencies: [
    .package(url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS", from: "4.3.0")
  ]
)
