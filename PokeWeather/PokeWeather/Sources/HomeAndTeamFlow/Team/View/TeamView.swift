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
    
    private let pokemonInfoCardView: PokemonInfoCard = {
       let cardView = PokemonInfoCard(frame: CGRect(x: 0, y: 0, width: 354, height: 389))
        cardView.layer.cornerRadius = 40
        return cardView
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .lightGray
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(myTeamLabel)
        addSubview(pokemonInfoCardView)
    }
    
    private func setConstraints() {
        myTeamLabel.addConstraints(top: safeAreaLayoutGuide.topAnchor, centerX: centerXAnchor, paddingTop: 25)
        pokemonInfoCardView.addConstraints(centerX: centerXAnchor, centerY: centerYAnchor, width: 354, height: 389)
    }
    
}
