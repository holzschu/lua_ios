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
            checksum: "c329a787015d1fe1f1e6bef5c6f25ac8f72553885c53d07c3a93a05064b2fe59"
        )
    ]
)
