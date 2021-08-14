//
//  HomeViewController.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class HomeViewController: UIViewController {
    private var tableView: UITableView!
    private var headerView: HomeView?
    
//    private var homeHeaderView: HomeView? = nil
//    private var viewModel       : TeamCreationViewModel
    
//    init(/*viewModel: TeamCreationViewModel*/) {
////        self.viewModel = viewModel
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
        
        tableView = UITableView()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .clear
        self.tableView.tableHeaderView = self.createTableHeader()
        
        buildView()
        setup()
    }
    
    private func createTableHeader() -> UIView {
        headerView = HomeView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        
        return headerView!
    }
    
    private func buildView() {
        view.addSubview(tableView)
        
//        homeHeaderView = view as? HomeView
    }
    
    private func setup() {
        tableView.addConstraints(top: view.topAnchor, bottom: view.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return models.count
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if indexPath.section == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: HourlyTableViewCell.identifier, for: indexPa th) as! HourlyTableViewCell
//            cell.configure(with: models)
//            return cell
//        }
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherTableViewCell.identifier, for: indexPath) as! WeatherTableViewCell
//        cell.configure(with: models[indexPath.row])
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
