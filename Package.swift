// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Easings",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [.library(name: "Easings", targets: ["Easings"])],
    dependencies: [],
    targets: [.target(name: "Easings", dependencies: [])],
    swiftLanguageVersions: [.v5]
)
