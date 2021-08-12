//
//  TeamView.swift
//  PokeWeather
//
//  Created by Kauê Sales on 12/08/21.
//

import UIKit

class TeamView: UIView {
    
    private let myTeamLabel: UILabel = {
        let label = UILabel()
        label.text = "My team"
        label.font = UIFont(name: "Helvetica Neue Bold", size: 22)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .blue
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(myTeamLabel)
    }
    
    private func setConstraints() {
        myTeamLabel.addConstraints(top: safeAreaLayoutGuide.topAnchor, centerX: centerXAnchor, paddingTop: 25)
    }
    
}
