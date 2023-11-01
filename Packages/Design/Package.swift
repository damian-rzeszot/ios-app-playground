// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Design",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "Design",
            targets: ["Design"]
        ),
    ],
    targets: [
        .target(
            name: "Design"
        ),
        .testTarget(
            name: "DesignTests",
            dependencies: ["Design"]
        ),
    ]
)
