//
//  ViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

final class TeamCreationViewController: UIViewController {
    
    private var teamCreationView: HomeView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buildView()
    }
    
    private func buildView() {
        view = HomeView()
        
        teamCreationView = view as? HomeView
    }
    
    

}

