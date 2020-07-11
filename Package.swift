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
            checksum: "6a42e114a9d49cf71f0c6e18bfa9b4dc5b9dbdbe67506c2b5ade16cfb4aca4cf"
        )
    ]
)
