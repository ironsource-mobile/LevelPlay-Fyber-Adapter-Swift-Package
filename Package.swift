// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Fyber-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FyberAdapter", targets: ["FyberAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", exact: "8.4.9"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "FyberAdapter",
      dependencies: [
        "FyberAdapterSDK",
        .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "FyberAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/fyber-adapter/5.10.0/ISFyberAdapter5.10.0.zip",
      checksum: "23968c1828a283e6f14337fe1e3ca509dbbf2a7e332bf143b44f832817078c94"
    )
  ]
)
