// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Fyber-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FyberAdapter", targets: ["FyberAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", exact: "8.4.3"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/fyber-adapter/5.5.0/ISFyberAdapter5.5.0.zip",
      checksum: "09a6868afefeef983a55bc30b78cab0e4489b303e910a9fec94596bffc1252aa"
    )
  ]
)
