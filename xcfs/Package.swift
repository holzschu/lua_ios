// swift-tools-version:5.3
import PackageDescription

_ = Package(
    name: "deps",
    platforms: [.macOS("11")],
    dependencies: [
        .package(url: "https://github.com/yury/FMake", from: "0.0.16")
    ],
    
    targets: [
        .binaryTarget(
            name: "ios_system",
            url: "https://github.com/holzschu/ios_system/releases/download/v3.0.0/ios_system.xcframework.zip",
            checksum: "66f4a5e696e29f3c70e8bab3a3e8c5f5a0bda48ab102e9db98a90db93b0981ea"
        ),
        .target(
            name: "build",
            dependencies: ["FMake"]
        ),
    ]
)
