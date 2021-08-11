//
//  Coordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class Coordinator: Equatable {
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
    
    weak var parentCoordinator: Coordinator?
    
    private(set) var childCoordinators: [Coordinator] = []
    
    func start() {
        preconditionFailure("This method needs to be overriden by concrete subclass")
    }
    
    func finish() {
        guard let parentCoordinator = parentCoordinator else {
            preconditionFailure("parentCoordinator must not be nil and this method needs to be overriden by concrete subclass")
        }
        
        removeAllChildCoordinators()
        parentCoordinator.removeChildCoordinator(from: self)
    }
    
    func finishParent() {
        guard let parentCoordinator = parentCoordinator else {
            preconditionFailure("parentCoordinator must not be nil and this method needs to be overriden by concrete subclass")
        }
        
        parentCoordinator.finish()
    }
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(from coordinator: Coordinator) {
        if let index = childCoordinators.lastIndex(of: coordinator){
            childCoordinators.remove(at: index)
        } else {
            print("coordinator not found", coordinator)
        }
    }
    
    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) {
        childCoordinators = childCoordinators.filter({ $0 is T == false})
    }
    
}
