// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxASDataSources",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "RxASDataSources",
            targets: ["DataSources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/3a4oT/Texture.git", .revision("f06cc18ff0723091bcd25bf87b19f678968dad48")),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/pinterest/PINCache.git", .upToNextMajor(from: "3.0.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DataSources",
            dependencies: [
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "Differentiator", package: "RxDataSources"),
                .product(name: "RxDataSources", package: "RxDataSources"),
                .product(name: "AsyncDisplayKit", package: "Texture"),
                "PINCache",
            ]),

    ]
)
