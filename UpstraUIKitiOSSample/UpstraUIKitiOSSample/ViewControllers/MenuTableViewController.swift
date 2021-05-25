//
//  MenuTableViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 9/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import AmitySDK
import AmityUIKit

class MenuTableViewController: UITableViewController {
    
    private enum Menu: CaseIterable {
        case chat
        case community
        
        var title: String {
            switch self {
            case .chat:
                return "Chat"
            case .community:
                return "Community"
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
        case .chat:
            navigateToChat()
        case .community:
            navigateToCommunity()
        }
    }
    
    // MARK: - Private functions
    
    private func items(at indexPath: IndexPath) -> Menu {
        return Menu.allCases[indexPath.row]
    }
    
    private func navigateToChat() {
        let viewController = ChatMenuTableViewController()
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToCommunity() {
        let viewController = CommunityMenuTableViewController()
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
