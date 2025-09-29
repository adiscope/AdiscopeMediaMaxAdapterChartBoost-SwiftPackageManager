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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "d1ced248e0aae2d94fdd27619408f35e79509a32a4ab40650a602b57dadc0262"
        ),
    ]
)
