// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "KakaoSDKAuth",
                 targets: ["KakaoSDKAuth"]),
        
        .library(name: "KakaoSDKCommon",
                 targets: ["KakaoSDKCommon"]),
        
        .library(name: "KakaoSDKLink",
                 targets: ["KakaoSDKLink"]),
        
        .library(name: "KakaoSDKNavi",
                 targets: ["KakaoSDKNavi"]),
        
        .library(name: "KakaoSDKStory",
                 targets: ["KakaoSDKStory"]),
        
        .library(name: "KakaoSDKTalk",
                 targets: ["KakaoSDKTalk"]),
        
        .library(name: "KakaoSDKTemplate",
                 targets: ["KakaoSDKTemplate"]),
        
        .library(name: "KakaoSDKUser",
                 targets: ["KakaoSDKUser"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.3")),
    ],
    targets: [
        .target(name: "KakaoSDKAuth",
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "Sources/KakaoSDKAuth"),
        
        .target(name: "KakaoSDKCommon",
                dependencies: ["Alamofire"],
                path: "Sources/KakaoSDKCommon"),
        
        .target(name: "KakaoSDKLink",
                dependencies: ["KakaoSDKCommon", "KakaoSDKTemplate", "Alamofire"],
                path: "Sources/KakaoSDKLink"),
        
        .target(name: "KakaoSDKNavi",
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "Sources/KakaoSDKNavi"),
        
        .target(name: "KakaoSDKStory",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "Alamofire"],
                path: "Sources/KakaoSDKStory"),
        
        .target(name: "KakaoSDKTalk",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "KakaoSDKTemplate", "Alamofire"],
                path: "Sources/KakaoSDKTalk"),
        
        .target(name: "KakaoSDKTemplate",
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "Sources/KakaoSDKTemplate"),
        
        .target(name: "KakaoSDKUser",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "Alamofire"],
                path: "Sources/KakaoSDKUser")
    ]
)
