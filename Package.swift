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
            url: "https://github.com/AgoraIO/AgoraRtm_macOS/releases/download/1.4.10/AgoraRtmKit.xcframework.zip",
            checksum: "93960025bcd480ad860861f5cee8ef2264c27000327c50dcaca0fce7553c0519"
        )
//        .binaryTarget(name: "AgoraRtmKit", path: "./AgoraRtmKit.xcframework")
    ]
)
