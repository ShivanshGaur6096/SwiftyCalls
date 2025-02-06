// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "SwiftyCalls",
    platforms: [
        .iOS(.v15_6)  // Minimum iOS version
    ],
    products: [
        .library(
            name: "SwiftyCalls",
            targets: ["SwiftyCalls"]
        ),
    ],
    dependencies: [
        // Add any external dependencies here
    ],
    targets: [
        .target(
            name: "SwiftyCalls",
            dependencies: [],
            path: "SwiftyCalls/SwiftyCalls"
        )
//        .testTarget(
//            name: "SwiftyCallsTests",
//            dependencies: ["SwiftyCalls"],
//            path: "Tests"
//        )
    ],
    swiftLanguageVersions: [.v5]  // Swift version
)
