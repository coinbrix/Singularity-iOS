// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Singularity-iOS",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Singularity-iOS",
            targets: ["SingularityKit"]),
    ],
//    dependencies: [
//            // Dependencies declare other packages that this package depends on.
//        .package(url: "https://github.com/coinbase/wallet-mobile-sdk.git", from: "1.0.3"),
//    ],
    targets: [
        .binaryTarget(name: "SingularityKit", path: "./SingularityKit.xcframework")
    ]
)
