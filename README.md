# UpstraUIKitiOSSample

Welcome to UpstraUIKitiOSSample repository. This will provide you how to integrate [UpstraUIKit](https://github.com/EkoCommunications/EkoMessagingSDKUIKit) to your own project.

## Getting Started

1. [Download](https://developer.apple.com/xcode/download/) the Xcode 11 release.
1. Clone this repository.
1. Run `pod install` to install dependencies.

*For carthage, please follow [this](https://app.gitbook.com/@eko/s/sdk/uikit/uikit/get-started) instruction.*

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

## Libraries

- [UpstraUIKit](https://github.com/EkoCommunications/EkoMessagingSDKUIKit)
