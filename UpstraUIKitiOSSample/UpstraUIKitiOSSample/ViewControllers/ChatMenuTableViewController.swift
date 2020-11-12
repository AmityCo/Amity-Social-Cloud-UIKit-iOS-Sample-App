//
//  ChatMenuTableViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 12/11/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import EkoChat
import UpstraUIKit

class ChatMenuTableViewController: UITableViewController {
    
    private enum Menu: CaseIterable {
        case chatHome
        case chatList
        case chatListCustomize
        
        var title: String {
            switch self {
            case .chatHome:
                return "Chat Home"
            case .chatList:
                return "Chat List"
            case .chatListCustomize:
                return "Chat List with customization"
            }
        }
    }
    
    // MARK: - View's life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Menu.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.self), for: indexPath)
        cell.textLabel?.text = items(at: indexPath).title
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch items(at: indexPath) {
        case .chatList:
            navigateToChatList()
        case .chatListCustomize:
            navigateToChatListWithCustomization()
        case .chatHome:
            navigateToChatHome()
        }
    }
    
    // MARK: - Private functions
    
    private func items(at indexPath: IndexPath) -> Menu {
        return Menu.allCases[indexPath.row]
    }
    
    private func navigateToChatHome() {
        let viewController = EkoChatHomePageViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToChatList() {
        let viewController = EkoMessageListViewController.make(channelId: "android-iOS-conversation")
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToChatListWithCustomization() {
        let viewController = EkoMessageListViewController.make(channelId: "android-iOS-conversation")
        viewController.register(type: .textIncoming, cell: CustomTextIncomingCell.self)
        viewController.register(type: .imageOutgoing, cell: CustomTextIncomingCell.self)
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

class CustomTextIncomingCell: UITableViewCell, EkoMessageCellProtocol {
    
    func display(message: EkoMessagesModel) {
        // do somthing
    }
    
}
