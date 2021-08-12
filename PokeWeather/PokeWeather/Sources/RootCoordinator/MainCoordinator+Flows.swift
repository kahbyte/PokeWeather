//
//  MainCoordinator+Flows.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

extension MainCoordinator {
    func start(flow: FlowType) {
        switch flow {
        case .creation:
            showCreation()
        case .home:
            showHome()
        }
    }
}

extension MainCoordinator {
    func showCreation() {
        guard let topViewController = topController else { return }
        
        let coordinator = TeamCreationCoordinator(topViewController: topViewController, delegate: CommonsCoordinatorDelegateImplementation())
        MainCoordinator.shared.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    func showHome() {
        guard let topViewController = topController else { return }
        
        let coordinator = HomeAndTeamFlowCoordinator(topViewController: topViewController, delegate: CommonsCoordinatorDelegateImplementation())
        MainCoordinator.shared.childCoordinators.append(coordinator)
        coordinator.start()
    }
}
