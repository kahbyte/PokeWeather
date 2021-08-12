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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        
    }
    
    private func setConstraints() {
        
    }
}
