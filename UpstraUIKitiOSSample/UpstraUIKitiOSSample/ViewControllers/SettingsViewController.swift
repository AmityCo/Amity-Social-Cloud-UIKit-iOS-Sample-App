//
//  SettingsViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import AmityUIKit

class SettingsViewController: UIViewController {
    
    private enum Preset {
        case defaultPreset
        case customPreset1
        case customPreset2
        
        var theme: AmityTheme {
            switch self {
            case .defaultPreset:
                return AmityTheme()
            case .customPreset1:
                return AmityTheme(primary: .brown, secondary: .black, alert: .red, highlight: .green, base: .gray, baseInverse: .white, messageBubble: .orange, messageBubbleInverse: .purple)
            case .customPreset2:
                return AmityTheme(primary: .systemBlue, secondary: .systemGray, alert: .systemRed, highlight: .systemGreen, base: .systemPink, baseInverse: .systemIndigo, messageBubble: .systemOrange, messageBubbleInverse: .systemTeal)
            }
        }
    }
    
    // MARK: - View's life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func defaultPresetTap(_ sender: Any) {
        let preset = Preset.defaultPreset
        AmityUIKitManager.set(theme: preset.theme)
    }
    
    @IBAction func customPreset1Tap(_ sender: Any) {
        let preset = Preset.customPreset1
        AmityUIKitManager.set(theme: preset.theme)
    }
    
    @IBAction func customPreset2Tap(_ sender: Any) {
        let preset = Preset.customPreset2
        AmityUIKitManager.set(theme: preset.theme)
    }
    
}
