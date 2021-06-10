//
//  CustomMessageTextIncomingTableViewCell.swift
//  UpstraUIKitiOSSample
//
//  Created by Sarawoot Khunsri on 23/11/2563 BE.
//  Copyright © 2563 BE Upstra. All rights reserved.
//

import UIKit
import AmityUIKit

class CustomMessageTextIncomingTableViewCell: UITableViewCell, AmityMessageCellProtocol {

    @IBOutlet private var displayText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func display(message: AmityMessageModel) {
        let messageContent = message.data?["text"] as? String ?? ""
        let userDisplayname = message.object.user?.displayName ?? ""
        
        displayText.text = "[\(userDisplayname)]: \(messageContent)"
    }
    
}
