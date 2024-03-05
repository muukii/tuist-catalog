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
      deploymentTargets: .iOS("15.0"),
      sources: ["./Sources/App/**"],
      dependencies: [
        .external(name: "Verge"),
        .target(name: "AppService"),
      ],
      mergedBinaryType: .manual(mergeableDependencies: ["AppService"])
    ),

    .target(
      name: "AppService",
      destinations: .iOS,
      product: .framework,
      bundleId: "appService",
      deploymentTargets: .iOS("15.0"),
      sources: ["./Sources/AppService/**"],
      dependencies: [
        .external(name: "Verge")
      ],
      mergeable: true
    )
  ]
)
