//
//  ViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

protocol vcTestProtocol {
    func showHome()
}

final class TeamCreationViewController: UIViewController, vcTestProtocol {
    func showHome() {
        viewModel.showHome()
    }
    
    
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
        teamCreationView?.delegate = self
        
        buildView()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    private func buildView() {
        view = TeamCreationView(delegate: self)
        
        teamCreationView = view as? TeamCreationView
    }
    
    private func setup() {
        teamCreationView?.setupTeamCreationView(.init())
    }

}

