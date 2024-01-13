//
//  ConversationController.swift
//  TwitterApp
//
//  Created by Luan Santos on 13/01/24.
//

import UIKit


class ConversationController: UIViewController {
    
    // MARK: - properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
    
    
}

