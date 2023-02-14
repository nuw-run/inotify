// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Inotify",
    products: [
        .library(
            name: "Inotify",
            targets: ["Inotify"])
    ],
    dependencies: [
        .package(url: "https://github.com/Ponyboy47/Cinotify.git", from: "3.0.0"),
        .package(url: "https://github.com/Ponyboy47/Cselect.git", from: "2.0.0"),
        .package(url: "https://github.com/Ponyboy47/ErrNo.git", from: "0.5.2"),
        .package(url: "https://github.com/nuw-run/Pathman.git", branch: "master")
    ],
    targets: [
        .target(
            name: "Inotify",
            dependencies: ["Cinotify", "Cselect", "ErrNo", "Pathman"]),
        .testTarget(
            name: "InotifyTests",
            dependencies: ["Inotify", "ErrNo"])
    ]
)
