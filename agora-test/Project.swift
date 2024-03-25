// https://tuist.github.io/tuist/main/documentation/projectdescription/project/
import ProjectDescription

let project = Project(
  name: "Example",
  organizationName: "muukii",
  targets: [
    Target.target(
      name: "App",
      destinations: .iOS,
      product: .app,
      bundleId: "app",
      deploymentTargets: .iOS("15.0"),
      sources: ["./Sources/App/**"],
      dependencies: [
        .external(name: "RtcBasic"),
      ]
    ),

    Target.target(
      name: "AppTests",
      destinations: [.iPhone],
      product: .unitTests,
      bundleId: "appTests",
      deploymentTargets: .iOS("15.0"),
      sources: .paths(["./Tests/AppTests/**"]),
      dependencies: [
        .external(name: "RtcBasic"),
      ]
    )

  ]
)
