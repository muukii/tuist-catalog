// swift-tools-version: 6.0
@preconcurrency import PackageDescription

let package = Package(
  name: "Tuist",
  dependencies: [
    .package(url: "https://github.com/VergeGroup/Verge", branch: "main")
  ]
)
