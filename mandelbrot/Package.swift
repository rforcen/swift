// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mandelbrot",
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics", from: "0.0.7"),
        .package(name: "Time", url: "https://github.com/davedelong/time", from: "0.9.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .target(
            name: "mandelbrot",
            dependencies: [.product(name: "Numerics", package: "swift-numerics"), "Time" ]),
        
    ]
)
