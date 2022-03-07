// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HexSwift",
    platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v11)],
    products: [
        .library(
            name: "HexSwift",
            targets: ["HexSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HexSwift",
            dependencies: []),
        .testTarget(
            name: "HexSwiftTests",
            dependencies: ["HexSwift"]),
    ]
)
