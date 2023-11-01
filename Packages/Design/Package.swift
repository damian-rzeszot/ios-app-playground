// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Design",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "Design",
            targets: [
                "Buttons",
                "Margin",
                "Utils"
            ]
        ),
    ],
    targets: [
        .target(
            name: "Theme"
        ),
        .target(
            name: "Utils"
        ),
        .target(
            name: "Margin"
        ),

        .target(
            name: "Buttons",
            dependencies: [
                "Theme",
                "Utils",
                "Margin"
            ]
        ),
    ]
)
