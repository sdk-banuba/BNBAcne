// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.3"

let package = Package(
    name: "BNBAcne",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBAcne",
            targets: [
                "BNBAcne",
                "BNBAcne_BNBSdkCore",
                "BNBAcne_BNBEffectPlayer",
                "BNBAcne_BNBScripting",
                "BNBAcne_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBAcne",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.3/BNBAcne.zip",
            checksum: "38de484ff8ac004a20a32d8f22e72b25d3b203454c6cd440a40b8657c9478ee3"
        ),
        .target(
            name: "BNBAcne_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBAcne_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBAcne_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBAcne_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
