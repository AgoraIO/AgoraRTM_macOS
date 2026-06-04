// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AgoraRTM",
    platforms: [.macOS(.v10_10)],
    products: [
        .library(
            name: "AgoraRTM",
            targets: ["AgoraRtmKit", "AgoraRtmInfra_macOS"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_macOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.2.8_macOS.zip",
            checksum: "db5081eefbb927a4ef8a953fcf44cf87a09731c3b4501c117539128fd2c638c7"
        ),
        .target(
            name: "AgoraRtmInfra_macOS",
            dependencies: [
                .product(name: "AgoraInfra_macOS", package: "AgoraInfra_macOS")
            ]
        )
    ]
)
