//
//  InitAllViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class InitAllViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        MainCoordinator.shared.start(flow: .creation)
    }
}
