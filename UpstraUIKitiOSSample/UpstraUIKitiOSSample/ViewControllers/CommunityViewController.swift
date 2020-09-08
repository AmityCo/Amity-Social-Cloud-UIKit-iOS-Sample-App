//
//  CommunityViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import UpstraUIKit

class CommunityViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let communityHomePage = EkoCommunityHomePageViewController.make()
        addChildAsSubView(communityHomePage)
    }
    
}
