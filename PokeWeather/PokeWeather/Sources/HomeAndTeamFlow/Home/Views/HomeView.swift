//
//  HomeView.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit
import SpriteKit

class HomeView: UIView {
    
    private let particlesView = SKView()
    
    private let weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: HomeUIConstants.weatherIconFrame.width, height: HomeUIConstants.weatherIconFrame.height.adjusted)
        imageView.image = UIImage(named: "rain")
        return imageView
    }()
    
    private let settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "settings"), for: .normal)
        button.addTarget(self, action: #selector(presentSettingsVC), for: .touchUpInside)
        return button
    }()
    
    private let bestPokemonLabel: UILabel = {
        let label = UILabel()
        label.text = "Today your best Pokémon is"
        label.font = UIFont(name: "Helvetica Neue Bold", size: 22)
        label.textColor = .white
        return label
    }()
    
    private let pokemonCardView: StrongestPokemonCard = {
        let cardView = StrongestPokemonCard(frame: CGRect(x: 0, y: 0, width: 319, height: 329))
        cardView.layer.cornerRadius = 40
        return cardView
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .darkGray
        addSubviews()
        setConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(weatherIcon)
        addSubview(settingsButton)
        addSubview(bestPokemonLabel)
        addSubview(pokemonCardView)
        addSubview(particlesView)
    }
    
    @objc private func presentSettingsVC() {
        
    }
    
    private func setConstraints() {
        weatherIcon.addConstraints(top: safeAreaLayoutGuide.topAnchor, bottom: nil, leading: safeAreaLayoutGuide.leadingAnchor, trailing: nil, centerX: nil, centerY: nil, paddingTop: 22, paddingLeft: 37, paddingBottom: 0, paddingRight: 0, width: 50, height: 50)
        settingsButton.addConstraints(top: safeAreaLayoutGuide.topAnchor, bottom: nil, leading: nil, trailing: safeAreaLayoutGuide.trailingAnchor, centerX: nil, centerY: nil, paddingTop: 22, paddingLeft: 0, paddingBottom: 0, paddingRight: -37, width: 50, height: 50)
        bestPokemonLabel.addConstraints(top: weatherIcon.bottomAnchor, bottom: nil, leading: nil, trailing: nil, centerX: centerXAnchor, centerY: nil, paddingTop: 71.5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        pokemonCardView.addConstraints(top: bestPokemonLabel.bottomAnchor, bottom: nil, leading: nil, trailing: nil, centerX: centerXAnchor, centerY: nil, paddingTop: 140, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 319, height: 329)
    }
    
    
    private struct HomeUIConstants {
        static let weatherIconFrame = (width: CGFloat(50), height: CGFloat(50))
    }
}
