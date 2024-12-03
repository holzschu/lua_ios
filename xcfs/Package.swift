// swift-tools-version:5.3
import PackageDescription

_ = Package(
    name: "deps",
    platforms: [.macOS("11")],
    dependencies: [
        .package(url: "https://github.com/holzschu/FMake", from: "0.0.19")
    ],
    
    targets: [
        .binaryTarget(
            name: "ios_system",
            url: "https://github.com/holzschu/ios_system/releases/download/v3.0.3/ios_system.xcframework.zip",
            checksum: "50f1692873e73fd862f45f73f2c08745e822c01ff5e0a0e0aec7fed6bb946e7f"
        ),
        .target(
            name: "build",
            dependencies: ["FMake"]
        ),
    ]
)
