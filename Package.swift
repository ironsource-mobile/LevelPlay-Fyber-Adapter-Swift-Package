// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Fyber-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FyberAdapter", targets: ["FyberAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", exact: "8.4.8"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/fyber-adapter/5.9.0/ISFyberAdapter5.9.0.zip",
      checksum: "985c081a3c3c080833f84720392b6848e27d1d1d764e0738cd8764188056783f"
    )
  ]
)
