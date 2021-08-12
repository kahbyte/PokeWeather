//
//  TeamViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 12/08/21.
//

import UIKit

class TeamViewController: UIViewController {
    
    private var teamView: TeamView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
    }
    
    private func buildView() {
        view = TeamView()
        
        teamView = view as? TeamView
    }
    
}
