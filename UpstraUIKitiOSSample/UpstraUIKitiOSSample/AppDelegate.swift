//
//  AppDelegate.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import AmityUIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        if let infoPlistPath = Bundle.main.url(forResource: "Amity-Info", withExtension: "plist"),
           let infoPlistData = try? Data(contentsOf: infoPlistPath),
           let dict = try? PropertyListSerialization.propertyList(from: infoPlistData, options: [], format: nil) as? [String: Any],
           let apiKey = dict["AmityAPIKey"] as? String {
            
            // setup apikey and register device
            AmityUIKitManager.setup(apiKey: apiKey)
            AmityUIKitManager.registerDevice(withUserId: "ios0000", displayName: "iOS User") { success, error in
                print("[AmityUIKit] Login \(success ? "successfully" : "failed") \(error?.localizedDescription ?? "")")
            }
            
            // custom event
            AmityUIKitManager.set(eventHandler: CustomEventHandler())
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

