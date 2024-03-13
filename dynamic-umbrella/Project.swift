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
        .target(name: "Umbrella"),
//        .external(name: "Verge"),
        .target(name: "DynamicA"),
      ]
    ),

    .target(
      name: "DynamicA",
      destinations: .iOS,
      product: .framework,
      bundleId: "appService",
      deploymentTargets: .iOS("15.0"),
      sources: ["./Sources/DynamicA/**"],
      dependencies: [
        .target(name: "Umbrella"),
        .external(name: "Verge")
      ]
    ),

    .target(
      name: "Umbrella",
      destinations: .iOS,
      product: .framework,
      bundleId: "umbrella",
      deploymentTargets: .iOS("15.0"),
      sources: ["./Sources/Umbrella/**"],
      dependencies: [
        .external(name: "Verge")
      ], 
      settings: .settings(base: ["OTHER_LDFLAGS":"-ObjC -all_load"])
    )
  ]
)
