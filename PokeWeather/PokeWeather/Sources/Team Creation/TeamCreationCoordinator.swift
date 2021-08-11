//
//  TeamCreationCoordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class TeamCreationCoordinator: Coordinator {
    private var navigationController: UINavigationController = .init()
    private var topViewController: UIViewController
    private var delegate: CommonsCoordinatorDelegate
    
    init(topViewController: UIViewController, delegate: CommonsCoordinatorDelegate) {
        self.topViewController = topViewController
        self.delegate = delegate
    }
    
    override func start() {
        let viewModel = TeamCreationViewModel(coordinator: self)
        let viewController = TeamCreationViewController(viewModel: viewModel)
        navigationController.viewControllers = [viewController]
        navigationController.modalPresentationStyle = .fullScreen
        topViewController.present(navigationController, animated: false, completion: nil)
    }
    
    private func startHome() {
        delegate.didFinish(from: self)
        delegate.openFlow(flow: .home)
    }
    
    override func finish() {
        removeAllChildCoordinators()
        delegate.didFinish(from: self)
    }
}

extension TeamCreationCoordinator: TeamCreationViewModelCoordinatorDelegate {
    func showHome() {
        startHome()
    }
}
