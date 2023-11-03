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
            targets: [
                "TheApp"
            ]
        ),
    ],
    dependencies: [
        .package(path: "../Design")
    ],
    targets: [
        .target(
            name: "TheApp",
            dependencies: [
                "Design",
                "SodaStream"
            ],
            swiftSettings: [
                .define("FOO", .when(configuration: .debug)),
                .define("BAR", .when(configuration: .release))
            ]
        ),

        .target(
            name: "SodaStream"
        ),

        .testTarget(
            name: "TheAppTests",
            dependencies: [
                "TheApp"
            ]
        ),
    ]
)
