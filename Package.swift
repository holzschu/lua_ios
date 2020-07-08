// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "lua_ios",
    products: [
        .library(name: "lua_ios", targets: ["lua_ios"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "lua_ios",
            url: "https://github.com/holzschu/lua_ios/releases/download/1.0/lua_ios.xcframework.zip",
            checksum: "caef205d26c759e91f53d3388a473f3544ba4f2b22e53c9b72f58a043e9543f6"
        )
    ]
)
