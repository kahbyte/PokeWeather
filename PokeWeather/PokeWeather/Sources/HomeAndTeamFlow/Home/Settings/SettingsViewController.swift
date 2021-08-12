//
//  SettingsViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private var settingsView: SettingsView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
    }
    
    private func buildView() {
        view = SettingsView()
    }
}
