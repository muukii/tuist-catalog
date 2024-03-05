// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "Tuist",
  dependencies: [
    .package(url: "https://github.com/apple/swift-atomics.git", exact: "1.1.0")
  ]
)
