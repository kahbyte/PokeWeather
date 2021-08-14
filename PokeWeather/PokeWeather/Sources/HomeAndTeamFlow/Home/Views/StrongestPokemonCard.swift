//
//  StrongestPokemonCard.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import UIKit

class StrongestPokemonCard: UIView {
    
    private let pokemonImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "132-2")
        return imageView
    }()
    
    private let pokemonName: UILabel = {
        let label = UILabel()
        label.text = "Ditto"
        label.font = UIFont(name: "Helvetica Neue Bold", size: 30.0)
        return label
    }()
    
    private let pokemonStatus: UILabel = {
        let label = UILabel()
        label.text = """
            What a day!
            Ditto is Stronger!
            """
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica Neue Bold", size: 18.0)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemIndigo
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(pokemonImage)
        addSubview(pokemonName)
        addSubview(pokemonStatus)
    }
    
    private func setConstraints() {
        pokemonImage.addConstraints(top: topAnchor, centerX: centerXAnchor, paddingTop: -100, width: 200, height: 200)
        pokemonName.addConstraints(top: pokemonImage.bottomAnchor, centerX: centerXAnchor, paddingTop: 10)
        pokemonStatus.addConstraints(top: pokemonName.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, paddingTop: 36, paddingLeft: 30)
        
    }
}
