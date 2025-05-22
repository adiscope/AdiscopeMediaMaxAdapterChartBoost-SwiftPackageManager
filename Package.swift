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
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
                .target(name: "ChartboostSDK"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "d67843bd6b519e515af570e9a724677a1b556a75631c6348149a68fdd4d3a86c"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/ChartboostSDK.xcframework.zip",
            checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
    ]
)
