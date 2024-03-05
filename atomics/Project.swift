// https://tuist.github.io/tuist/main/documentation/projectdescription/project/
import ProjectDescription

let project = Project(
  name: "Example",
  organizationName: "muukii",
  targets: [
    .target(
      name: "App",
      destinations: .iOS,
      product: .app,
      bundleId: "app",
      sources: ["./Sources/App/**"],
      dependencies: [
        .external(name: "Atomics")
        ]
    )
  ]
)
