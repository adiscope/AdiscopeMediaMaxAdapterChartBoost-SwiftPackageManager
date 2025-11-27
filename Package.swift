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
        .package(url: "https://github.com/adiscope/Adiscope-iOS-ChartBoost.git", exact: "5.0.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
                .target(name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter"),
                .product(name: "AdiscopeWithChartBoost", package: "Adiscope-iOS-ChartBoost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "6691b581ab1f1451bdf405bf41a59363b5a84e191bd0c785644be1b1391e6267"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "5517e9b527fe1d33e4ba7303319a09804b1245f1311c81e609df9a6daaa39010"
        ),
    ]
)
