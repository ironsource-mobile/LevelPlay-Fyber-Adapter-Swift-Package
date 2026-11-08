// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Fyber-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "FyberAdapter", targets: ["FyberAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", exact: "8.5.2"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/fyber-adapter/5.15.0/ISFyberAdapter5.15.0.zip",
      checksum: "adc542764aa0c0eb50ed4088006a7fe8bd164fd0f9c098096317908925e039ba"
    )
  ]
)
