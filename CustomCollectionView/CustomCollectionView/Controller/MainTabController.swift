//
//  MainTabController.swift
//  CustomCollectionView
//
//  Created by Steve Hernandez on 5/2/20.
//  Copyright © 2020 Steve Hernandez. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: -- Properties

    // MARK: -- Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()


    }

    // MARK: -- Helpers

    func configureViewControllers() {

        let feed = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)

        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)

        let notifications = NotificationsController()
        let nav3 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: notifications)

        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: conversations)

        viewControllers = [nav1, nav2, nav3, nav4]
    }

    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {

        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }


}
