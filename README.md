<img align="right"
src="https://user-images.githubusercontent.com/100549875/155941445-b1830713-5f9f-4903-9383-f36053a0775b.png"
alt="Amity Social Cloud SDKs" width="50%" />

<img align="left"
src="https://user-images.githubusercontent.com/100549875/155947065-3cc4291c-d600-40a1-bc49-4ff5e9b9d1be.svg"
alt="Amity logo" width="120px" />

<br />
<br />

# Amity Social Cloud SDKs
Boost app engagement and grow your user base with plug-and-play social
features. Amity modules are <b>ready to use</b> — the only things left
to do are integration and frontend.

Learn more about Amity here: [amity.co→](https://amity.co/)

<br />
<br />

# Amity Social Cloud UIKit iOS Sample App

Welcome to Amity Social Cloud UIKit iOS Sample App repository. This will provide you how to integrate [ASC UIKit](https://docs.amity.co/uikit/ios/overview) to your own project.

<br />

## Getting Started

1. [Download](https://developer.apple.com/xcode/download/) the Xcode 11 release.
2. Clone this repository.
3. Run `pod install` after cloned this repo to install dependencies or `pod install --repo-update` in case to update current dependencies.

*For carthage, please follow [this](https://docs.amity.co/uikit/ios/getting-started#install-the-sdk) instruction.*

<br />

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
<br />
<br />

<img align="left"
src="https://user-images.githubusercontent.com/100549875/156137190-46c08727-042b-4f3d-858b-d50868ebb0b3.png"
alt="Amity Social Cloud SDKs" width="50%" />

## Resources

**Developer Portal** <br />
Learn about building, deploying, and managing Amity Social Cloud. <br />
[Portal→](https://www.amity.co/developer-portal)

**Documentation** <br />
Everything you need to integrate Amity Social Cloud. <br />
[Docs→](https://docs.amity.co/)

**Developer Kits** <br />
Explore Amity Social Cloud UI Kits and Template Apps. <br />
[Developer Kits→](https://www.amity.co/developer-kits)

**Community** <br />
Join the community of Amity Social Cloud developers. <br />
[Community→](https://community.amity.co/)

**FAQ** <br />
Get the answers to the most asked questions. <br />
[FAQ→](https://www.amity.co/faq)

<br />
<br />
<br />
<br />
<br />
<br />

## Amity Chat SDK
Amity Chat SDK is an easy-to-integrate solution that enables
high-performing chat services on your app. From one-on-one to
large-scale group messaging, power them with <b>Amity Chat SDK</b>,
built with <b>messaging service APIs</b> to ignite connections and
open discussions.

Learn more about Amity Chat on [our
website→](https://www.amity.co/chat) or view the Amity
Chat [Docs→](https://docs.amity.co/chat)

<br />

## Amity Social SDK
Get in-app communities up and running using Amity Social SDK. Enable
<b>plug-and-play social features using supercharged social APIs</b>
and see preference-based groups thrive within your platform.

Learn more about Amity Social on [our
website→](https://www.amity.co/social) or view the
Amity Social [Docs→](https://docs.amity.co/social)

<br />

## Amity Video SDK
The Amity Video SDK, powered by <b>video APIs</b>, elevates your
application's user experience by adding interactive features such as
<b>in-app Stories and Live Streaming</b>. Engage your users with
captivating, memorable virtual events to participate in along with
other viewers from around the world.

Learn more about Amity Video on [our
website→](https://www.amity.co/video) or view the Amity
Video [Docs→](https://docs.amity.co/video)

<br />

## About Amity
The future is social — and we at Amity are on a mission to make social
experiences more accessible than ever. Amity Social Cloud allows
companies to easily integrate plug-and-play social features into their
apps and digital channels to drive engagement, build communities, and
grow revenue.

<b>🟢 We're hiring!</b> View all [open positions→](https://www.amity.co/careers)

<br />

## License
Public Framework. Copyright © 2022 Amity.
