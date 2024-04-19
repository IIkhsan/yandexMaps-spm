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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.5.1/YandexMapsMobile.xcframework.zip",
            checksum: "4bee651c0acba3340c43aefff82f5537f9a2390373078fd781a0f00af06eaaff"
        ),
    ]
)
