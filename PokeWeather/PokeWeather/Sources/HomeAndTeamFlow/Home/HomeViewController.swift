//
//  HomeViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class HomeViewController: UIViewController {
    private var homeView: HomeView? = nil
//    private var viewModel       : TeamCreationViewModel
    
    init(/*viewModel: TeamCreationViewModel*/) {
//        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
        
        buildView()
        setup()
    }
    
    private func buildView() {
        view = HomeView()
        
        homeView = view as? HomeView
    }
    
    private func setup() {
//        homeView?.setupTeamCreationView(.init())
    }
}
