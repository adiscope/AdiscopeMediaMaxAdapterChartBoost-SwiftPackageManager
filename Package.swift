// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterChartBoost",
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            targets: ["AdiscopeMediaMaxAdapterChartBoostTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adiscope/Adiscope-iOS-ChartBoost.git", exact: "4.3.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
                .product(name: "AdiscopeWithChartBoost", package: "Adiscope-iOS-ChartBoost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "d67843bd6b519e515af570e9a724677a1b556a75631c6348149a68fdd4d3a86c"
        ),
    ]
)
