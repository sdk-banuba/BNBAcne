// swift-tools-version:5.9
import PackageDescription

let bnbPackageVersion: Version = "1.18.7"

let package = Package(
    name: "BNBAcne",
    platforms: [
        .iOS(.v15)
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.7/BNBAcne.zip",
            checksum: "47e9bcdbd77239ac9a878876b5a7ec45efe625a32f4bb4893966de9b473d5d37"
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
