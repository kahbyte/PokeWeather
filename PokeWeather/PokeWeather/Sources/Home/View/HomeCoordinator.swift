//
//  HomeCoordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class HomeCoordinator: Coordinator {
    private var navigationController: UITabBarController = .init()
    private var topViewController: UIViewController
    private var delegate: CommonsCoordinatorDelegate
    
    init(topViewController: UIViewController, delegate: CommonsCoordinatorDelegate) {
        self.topViewController = topViewController
        self.delegate = delegate
    }
    
    override func start() {
//        let viewModel = TeamCreationViewModel()
        let viewController = HomeViewController()
        navigationController.viewControllers = [viewController]
        navigationController.modalPresentationStyle = .fullScreen
        topViewController.present(navigationController, animated: false, completion: nil)
    }
    
    override func finish() {
        removeAllChildCoordinators()
        delegate.didFinish(from: self)
    }
}
