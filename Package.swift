// swift-tools-version:5.4
//
//  RxCoreLocation.swift
//  RxCoreLocation
//
//  Created by Obi Bob Godwin on 23/10/15.
//  Copyright © 2017 RxCoreLocation. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "RxCoreLocation",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11)
    ],
    products: [
        .library(name: "RxCoreLocation", targets: ["RxCoreLocation"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.1.0")
    ],
    targets: [
        .target(
            name: "RxCoreLocation",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift")
            ],
            path: "Sources"
        )
    ]
)
