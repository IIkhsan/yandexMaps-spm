// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileWrapper",
    platforms: [
        .iOS(.v11),
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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.2.2-full.framework.zip",
            checksum: "2401186ce1ad6ae460ebef163d1c68ea78eea34b7a0d47b8a0ac54f4ed7f6f66"
            ),
    ]
)
