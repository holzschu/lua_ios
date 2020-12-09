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
            checksum: "2ff2f5ebe6c33c0ef6b6a9d0a927a2bf8036432e14c40d9d0f2e1e95ceb2431b"
        )
    ]
)
