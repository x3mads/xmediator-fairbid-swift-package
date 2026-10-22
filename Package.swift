// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorFairBid",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XMediatorFairBid", targets: ["XMediatorFairBidTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DigitalTurbine/FairBid-iOS-SPM.git", exact: "3.68.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.103.0")),
    ],
    targets: [
        .target(
            name: "XMediatorFairBidTarget",
            dependencies: [
                .target(name: "XMediatorFairBid"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "FairBidSDK", package: "FairBid-iOS-SPM"),
            ],
            path: "XMediatorFairBidTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorFairBid",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorFairBid/XMediatorFairBid-3.68.0.0.zip",
            checksum: "e2b2761ac2166f5cdf0e2de8dbaadcf0ca6ed096fc04880acac1a18ac01caaa2"
        ),
    ]
)
