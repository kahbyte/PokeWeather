//
//  HomeCoordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class HomeAndTeamFlowCoordinator: Coordinator {
    private var homeAndTeamTabBarController: HomeAndTeamTabBarController = .init()
    private var topViewController: UIViewController
    private var delegate: CommonsCoordinatorDelegate
    
    init(topViewController: UIViewController, delegate: CommonsCoordinatorDelegate) {
        self.topViewController = topViewController
        self.delegate = delegate
    }
    
    override func start() {
        homeAndTeamTabBarController.modalPresentationStyle = .fullScreen
        topViewController.present(homeAndTeamTabBarController, animated: true, completion: nil)
    }
    
    override func finish() {
        removeAllChildCoordinators()
        delegate.didFinish(from: self)
    }
}
