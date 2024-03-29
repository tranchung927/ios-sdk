// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOS SDK",
    platforms: [
            // Only add support for iOS 11 and up.
            .iOS(.v11)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "MVVM",targets: ["MVVM"]),
        .library(name: "AppNetworking",targets: ["AppNetworking"]),
        .library(name: "AppRouter",targets: ["AppRouter"]),
//        .library(name: "CoordinatorLayout",targets: ["CoordinatorLayout"]),
//        .library(name: "TransitionController",targets: ["TransitionController"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "MVVM", path: "Sources/MVVM.xcframework"),
        .binaryTarget(name: "AppNetworking", path: "Sources/AppNetworking.xcframework"),
        .binaryTarget(name: "AppRouter", path: "Sources/AppRouter.xcframework"),
//        .binaryTarget(name: "CoordinatorLayout", path: "Sources/CoordinatorLayout.xcframework"),
//        .binaryTarget(name: "TransitionController", path: "Sources/TransitionController.xcframework"),
    ]
)
