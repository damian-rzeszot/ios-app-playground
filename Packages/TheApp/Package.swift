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
            ],
            swiftSettings: [
                .define("FOO")
//                .define("FOO", .when(configuration: .debug)),
//                .define("BAR", .when(configuration: .release))
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

//            linkerSettings: [
//                .linkedLibrary(<#T##library: String##String#>, .when(configuration: .debug))
//            ],
