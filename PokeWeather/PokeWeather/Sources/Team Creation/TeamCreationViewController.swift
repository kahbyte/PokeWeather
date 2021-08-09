//
//  ViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

final class TeamCreationViewController: UIViewController {
    
    private var teamCreationView: TeamCreationView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buildView()
    }
    
    private func buildView() {
        view = TeamCreationView()
        
        teamCreationView = view as? TeamCreationView
    }
    
    

}

