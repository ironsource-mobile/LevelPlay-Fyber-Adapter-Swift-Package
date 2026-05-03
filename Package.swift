// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Fyber-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FyberAdapter", targets: ["FyberAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", exact: "8.4.7"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "FyberAdapter",
      dependencies: [
        "FyberAdapterSDK",
        .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "FyberAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/fyber-adapter/5.8.0/ISFyberAdapter5.8.0.zip",
      checksum: "4eae636c4f55297c652fe61460d38e2c0516bfb1e6c941b7caf0f3e26457abb1"
    )
  ]
)
