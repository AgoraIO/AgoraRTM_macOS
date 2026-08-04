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
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.3.0_macOS.zip",
            checksum: "0721ed4ef797c27cc87a82e5d9110ee1b79ca1ce98a1ee75e207f68513efcea4"
        ),
        .target(
            name: "AgoraRtmInfra_macOS",
            dependencies: [
                .product(name: "AgoraInfra_macOS", package: "AgoraInfra_macOS")
            ]
        )
    ]
)
