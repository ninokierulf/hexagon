// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HexFoundation",
    platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v11)],
    products: [
        .library(
            name: "HexFoundation",
            targets: ["HexNetworking", "HexUI", "HexUtil"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HexNetworking",
            dependencies: []),
        .testTarget(
            name: "HexNetworkingTests",
            dependencies: ["HexNetworking"]),
        
        .target(
            name: "HexUI",
            dependencies: []),
        .testTarget(
            name: "HexUITests",
            dependencies: ["HexUI"]),
        
        
        .target(
            name: "HexUtil",
            dependencies: []),
        .testTarget(
            name: "HexUtilTests",
            dependencies: ["HexUtil"]),
    ]
)
