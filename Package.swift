// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Neron",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_11),
        .tvOS(.v11),
    ],
    products: [
        .library(
            name: "Neron",
            targets: ["Neron"]),
    ],
    targets: [
        .target(name: "Neron"),
        .testTarget(
            name: "NeronTests",
            dependencies: ["Neron"]),
    ])
