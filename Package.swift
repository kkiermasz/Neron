// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Neron",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Neron",
            targets: ["Neron"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "8.1.1")
    ],
    targets: [
        .target(
            name: "Neron",
            dependencies: []),
        .testTarget(
            name: "NeronTests",
            dependencies: ["Neron", "Nimble"]),
    ]
)
