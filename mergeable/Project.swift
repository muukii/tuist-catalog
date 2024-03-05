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
        .external(name: "Verge"),
        .target(name: "AppService"),
      ]
    ),

    .target(
      name: "AppService",
      destinations: .iOS,
      product: .framework,
      bundleId: "appService",
      sources: ["./Sources/AppService/**"],
      dependencies: [
        .external(name: "Verge")
      ]
    )
  ]
)
