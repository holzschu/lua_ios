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
            checksum: "0ccdab671f31c20daf8833452cc36598b49f84441851d7142b305443425bc527"
        )
    ]
)
