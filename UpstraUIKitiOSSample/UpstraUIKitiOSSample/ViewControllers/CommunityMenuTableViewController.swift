//
//  CommunityMenuTableViewController.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 12/11/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import AmitySDK
import AmityUIKit

class CommunityMenuTableViewController: UITableViewController {
    
    private enum Menu: CaseIterable {
        case home
        case newsfeed
        case globalFeed
        case myFeed
        case postCreator
        
        var title: String {
            switch self {
            case .home:
                return "Home"
            case .newsfeed:
                return "Newsfeed"
            case .globalFeed:
                return "Global Feed"
            case .myFeed:
                return "My Feed"
            case .postCreator:
                return "Post Creator"
            }
        }
    }
    
    // MARK: - Properties
        
    private let communityRepo = AmityCommunityRepository(client: AmityUIKitManager.client)
    private var communityToken: AmityNotificationToken?
    
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
        case .home:
            navigateToHome()
        case .newsfeed:
            navigateToNewsFeed()
        case .globalFeed:
            navigateToGlobalFeed()
        case .myFeed:
            navigateToMyFeed()
        case .postCreator:
            navigateToPostCreator()
        }
    }
    
    // MARK: - Private functions
    
    private func items(at indexPath: IndexPath) -> Menu {
        return Menu.allCases[indexPath.row]
    }
    
    private func navigateToHome() {
        let viewController = AmityCommunityHomePageViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToNewsFeed() {
        let viewController = AmityNewsfeedViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToGlobalFeed() {
        let viewController = AmityGlobalFeedViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToMyFeed() {
        let viewController = AmityMyFeedViewController.make()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func navigateToPostCreator() {
        
        // get the first post sorted by displayname
        communityToken = communityRepo
            .getCommunities(displayName: nil, filter: .userIsMember, sortBy: .displayName, categoryId: nil, includeDeleted: false)
            .observe { [weak self] (collection, _, _) in
                if collection.count() > 0,
                   let object = collection.object(at: 0) {
                    
                    // open post creator for community
                    let viewController = AmityPostCreatorViewController.make(postTarget: .community(object: object))
                    self?.navigationController?.pushViewController(viewController, animated: true)
                }
            }
    }
    
}
