//
//  CommonsCoordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

enum FlowType {
    case creation
    case home
}

protocol CommonsCoordinatorDelegate: AnyObject {
    func didFinish(from: Coordinator)
    func openFlow( flow: FlowType)
}

extension CommonsCoordinatorDelegate {
    func openFlow( flow: FlowType) { }
}

class CommonsCoordinatorDelegateImplementation: CommonsCoordinatorDelegate {
    func didFinish(from: Coordinator) {
        MainCoordinator.shared.childCoordinators.removeAll(where: { $0 == from })
    }

    func openFlow( flow: FlowType) {
        MainCoordinator.shared.start(flow: flow)
    }
}
