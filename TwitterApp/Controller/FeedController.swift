//
//  FeedController.swift
//  TwitterApp
//
//  Created by Luan Santos on 13/01/24.
//

import UIKit


class FeedController: UIViewController {
    
    // MARK: - properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    func configureUI() {
        view.backgroundColor = .white
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
    
    
}
