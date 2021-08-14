//
//  PokemonInfoCard.swift
//  PokeWeather
//
//  Created by Kauê Sales on 12/08/21.
//

import UIKit

class PokemonInfoCard: UIView {
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
    
    private let pokemonWeight: UILabel = {
        let label = UILabel()
        label.text = "3000 Kg"
        label.font = UIFont(name: "Helvetica Neue Bold", size: 18.0)
        return label
    }()
    
    private let pokemonDescription: UILabel = {
        let label = UILabel()
        label.text =
"""
such text
very amaze
"""
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica Neue Bold", size: 16.0)
        return label
            
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(pokemonImage)
        addSubview(pokemonName)
        addSubview(pokemonWeight)
        addSubview(pokemonDescription)
    }
    
    private func setConstraints() {
        pokemonImage.addConstraints(top: topAnchor, centerX: centerXAnchor, paddingTop: -100, width: 200, height: 200)
    }
}
