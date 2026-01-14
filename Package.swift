// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SmartCityChat",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "SmartCityChat",
            targets: ["SmartCityChat"]
        ),
    ],
    dependencies:[
        .package(path: "localPackages/Tor"),
        .package(path: "localPackages/BitLogger"),
        .package(url: "https://github.com/21-DOT-DEV/swift-secp256k1", exact: "0.21.1")
    ],
    targets: [
        .executableTarget(
            name: "SmartCityChat",
            dependencies: [
                .product(name: "P256K", package: "swift-secp256k1"),
                .product(name: "BitLogger", package: "BitLogger"),
                .product(name: "Tor", package: "Tor")
            ],
            path: "SmartCityChat",
            exclude: [
                "Info.plist",
                "Assets.xcassets",
                "SmartCityChat.entitlements",
                "SmartCityChat-macOS.entitlements",
                "LaunchScreen.storyboard",
                "ViewModels/Extensions/README.md"
            ],
            resources: [
                .process("Localizable.xcstrings")
            ]
        ),
        .testTarget(
            name: "SmartCityChatTests",
            dependencies: ["SmartCityChat"],
            path: "SmartCityChatTests",
            exclude: [
                "Info.plist",
                "README.md"
            ],
            resources: [
                .process("Localization"),
                .process("Noise")
            ]
        )
    ]
)
