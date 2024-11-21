// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorMlkitOcr",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorMlkitOcr",
            targets: ["MLKitOCRPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MLKitOCRPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/MLKitOCRPlugin"),
        .testTarget(
            name: "MLKitOCRPluginTests",
            dependencies: ["MLKitOCRPlugin"],
            path: "ios/Tests/MLKitOCRPluginTests")
    ]
)