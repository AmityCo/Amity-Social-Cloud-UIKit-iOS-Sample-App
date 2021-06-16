# Amity Social Cloud UIKit iOS Sample App

Welcome to Amity Social Cloud UIKit iOS Sample App repository. This will provide you how to integrate [ASC UIKit](https://github.com/AmityCo/Amity-Social-Cloud-UIKit-iOS-Sample-App) to your own project.

## Getting Started

1. [Download](https://developer.apple.com/xcode/download/) the Xcode 11 release.
2. Clone this repository.
3. Run `pod install` after cloned this repo to install dependencies or `pod install --repo-update` in case to update current dependencies.

*For carthage, please follow [this](https://docs.amity.co/uikit/ios/getting-started#install-the-sdk) instruction.*

## Usage
For an iOS application, set up and authentication should be done in the AppDelegate.

```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        UpstraUIKit.setup(apiKey: "YOUR_API_KEY")
        UpstraUIKit.registerDevice(withUserId: "USER_ID", displayName: "Ali Connors")

        return true
    }

}
```
