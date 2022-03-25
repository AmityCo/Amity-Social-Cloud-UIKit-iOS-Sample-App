//
//  CustomEventHandler.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 22/6/2564 BE.
//  Copyright © 2564 BE Upstra. All rights reserved.
//

import AmityUIKit

class CustomEventHandler: AmityEventHandler {
    
    override func communityChannelDidTap(from source: AmityViewController, channelId: String) {
        print("\(channelId)")
    }
    
}
