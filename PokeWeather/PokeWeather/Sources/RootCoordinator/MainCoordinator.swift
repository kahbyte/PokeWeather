//
//  MainCoordinator.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class MainCoordinator {

    private init() {}

    // MARK: - Properties
    var window: UIWindow!

    // MARK: - Coordinator Properties
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController = UINavigationController()

    static var shared = MainCoordinator()

    internal var topController: UIViewController? {
        return UIApplication.topViewController()
    }

    // MARK: - Constructors
    func setup(window: UIWindow) {
        self.window = window
    }
}

/*Pegando a primeira a viewcontroller que existir ever
 verifica se o target é nulo
 como extendo uiapplication, eu percorro as telas
 reiniico o target e dou window.makeKey() até achar a que eu quero
 garantindo que exista apenas uma
 -
 se nao for nula, eu não preciso fazer essas instancias
 */
public extension UIApplication {
    static func topViewController(controller: UIViewController? = UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController) -> UIViewController? {
        var targetController = controller
        if targetController == nil {
            for window in self.shared.windows {
                guard let rootVC = window.rootViewController else { continue }
                targetController = rootVC
                window.makeKey()
                break
            }
        }

        if let navigationController = targetController as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        
        if let tabController = targetController as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        
        if let presented = targetController?.presentedViewController {
            return topViewController(controller: presented)
        }
        
        return targetController
    }
}
