//
//  ChatViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import UpstraUIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let chatHomePage = EkoChatHomePageViewController.make()
        addChildAsSubView(chatHomePage)
    }

}
