// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileWrapper",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "YandexMapsMobileWrapper",
            targets: ["YandexMapsMobileWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "YandexMapsMobileWrapper",
            dependencies: [
                .target(name: "YandexMapsMobile"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC"]),
            ]),
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.3.2/YandexMapsMobile.xcframework.zip",
            checksum: "7bedd363d78d48e9c5d32e57b0ae3489bdeee905bfe387ce559ba7bf0a2cbe9c"
            ),
    ]
)
