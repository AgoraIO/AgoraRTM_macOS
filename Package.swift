// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraRtmKit",
    defaultLocalization: "en",
    platforms: [.macOS(.v10_10)],
    products: [
        .library(
            name: "AgoraRtmKit",
            targets: ["AgoraRtmKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_macOS/releases/download/1.5.1/AgoraRtmKit.xcframework.zip",
            checksum: "3c209b9ad1bbfab850a10edc2d8d0559aef0d07d171dd9b9c954542d8b8dd32d"
        )
//        .binaryTarget(name: "AgoraRtmKit", path: "./AgoraRtmKit.xcframework")
    ]
)
