// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SendbirdUIKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SendbirdUIKit",
            targets: ["SendbirdUIKitSource"] // Point to the source target
        ),
    ],
    dependencies: [
        .package(
            name: "SendbirdChatSDK",
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios",
            from: "4.19.9"
        ),
    ],
    targets: [
        .target(
            name: "SendbirdUIKitSource",
            dependencies: [
                .product(name: "SendbirdChatSDK", package: "SendbirdChatSDK")
            ],
            path: "Sources", // Ensure this path points to the source files
            exclude: ["../Exclude"] // Update as necessary to exclude non-source files
        )
    ]
)
