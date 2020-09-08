//
//  UIViewController+Extension.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addChildAsSubView(_ vc: UIViewController) {
        addChild(vc)
        vc.view.frame = view.frame
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
}
