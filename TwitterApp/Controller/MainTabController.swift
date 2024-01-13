//
//  MainTabController.swift
//  TwitterApp
//
//  Created by Luan Santos on 13/01/24.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        let imageButton = UIImage(named: "new_tweet")
        button.backgroundColor = .twitterBlue
        button.tintColor = .white
        button.setImage(imageButton, for: .normal)
        button.addTarget(MainTabController.self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleButtonTapped() {
        print("Cliquei")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
        
    }
    
    func configureViewController() {
        let feed = FeedController()
        let feedNav = templateNavigationController(image: UIImage(named: "home_unselected")!, rootViewController: feed)
        
        let explore = ExploreController()
        let exploreNav = templateNavigationController(image: UIImage(named: "search_unselected")!, rootViewController: explore)
        
        let notifications = NotificationControlller()
        let notificationsNav = templateNavigationController(image: UIImage(named: "like_unselected")!, rootViewController: notifications)
        
        let conversations = ConversationController()
        let conversationsNav = templateNavigationController(image: UIImage(named: "mail")!, rootViewController: conversations)
        
        viewControllers = [feedNav, exploreNav,  notificationsNav, conversationsNav]
    }
    
    func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    

}


