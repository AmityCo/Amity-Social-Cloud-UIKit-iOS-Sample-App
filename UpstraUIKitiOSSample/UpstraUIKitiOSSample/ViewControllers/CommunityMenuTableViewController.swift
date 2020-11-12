//
//  CommunityMenuTableViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 12/11/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import UpstraUIKit

class CommunityMenuTableViewController: UITableViewController {
    
    private enum Menu: CaseIterable {
        case newsfeed
        case globalFeed
        
        var title: String {
            switch self {
            case .newsfeed:
                return "Newsfeed"
            case .globalFeed:
                return "Global Feed"
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
        case .newsfeed:
            navigateToNewsFeed()
        case .globalFeed:
            navigateToMyFeed()
        }
    }
    
    // MARK: - Private functions
    
    private func items(at indexPath: IndexPath) -> Menu {
        return Menu.allCases[indexPath.row]
    }
    
    private func navigateToNewsFeed() {
        let viewController = EkoCommunityHomePageViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToMyFeed() {
        let viewController = EkoGlobalFeedViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToChatListWithCustomization() {
        
    }
    
}
