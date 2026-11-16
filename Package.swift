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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_macOS.git", from: "1.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.3.1_macOS.zip",
            checksum: "24d0f84c1f1bf597512155bec7e85470f993219342acf9816f6e8921351e8ae4"
        ),
        .target(
            name: "AgoraRtmInfra_macOS",
            dependencies: [
                .product(name: "AgoraInfra_macOS", package: "AgoraInfra_macOS")
            ]
        )
    ]
)
