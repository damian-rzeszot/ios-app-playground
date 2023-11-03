// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TheApp",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "TheApp",
            targets: ["TheApp"]
        ),
    ],
    dependencies: [
        .package(path: "../Design")
    ],
    targets: [
        .target(
            name: "TheApp",
            dependencies: [
                "Design"
            ]
        ),
        .testTarget(
            name: "TheAppTests",
            dependencies: [
                "TheApp"
            ]
        ),
    ]
)
