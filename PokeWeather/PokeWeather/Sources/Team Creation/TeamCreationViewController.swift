//
//  ViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

final class TeamCreationViewController: UIViewController {
    
    private var teamCreationView: TeamCreationView? = nil
    private var viewModel       : TeamCreationViewModel
    
    init(viewModel: TeamCreationViewModel) {
        self.viewModel = viewModel
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
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.showHome()
    }
    
    private func buildView() {
        view = TeamCreationView()
        
        teamCreationView = view as? TeamCreationView
    }
    
    private func setup() {
        teamCreationView?.setupTeamCreationView(.init())
    }

}

