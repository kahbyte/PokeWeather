//
//  TeamCreationView.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

class TeamCreationView: UIView {
    
    private var curvedTopCard: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 414, height: 340)
        view.layer.cornerRadius = 40
        view.backgroundColor = UIColor(red: 3/255, green: 198/255, blue: 187/255, alpha: 1)
        return view
    }()
    
    private var cardTitleLabel: UIView = {
        let label = UILabel()
        label.text =
            """
Want to find
out what your
Pokémon team is?
"""
        
        label.textColor = .white
        label.font = UIFont(name: "Helvetica Neue Bold", size: 32)
        label.numberOfLines = 0
        return label
    }()
    
    private var importantDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter an important date for you"
        label.font = UIFont(name: "Helvetica Neue", size: 20.0)
        return label
    }()
    
    private var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/M/d"
        picker.preferredDatePickerStyle = .wheels
        picker.datePickerMode = .date
        picker.minimumDate = dateFormatter.date(from: "1922/01/01")
        picker.maximumDate = Date()
        return picker
    }()
    
    private var randomDateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Random Date", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 19.0)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 2
        button.layer.borderColor = CGColor(red: 3/255, green: 198/255, blue: 187/255, alpha: 1)
        button.setTitleColor(UIColor(red: 3/255, green: 198/255, blue: 187/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(randomDate), for: .touchUpInside)
        return button
    }()
    
    private var continueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: 19.0)
        button.layer.cornerRadius = 20
        button.layer.backgroundColor = CGColor(red: 3/255, green: 198/255, blue: 187/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        setConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(curvedTopCard)
        addSubview(importantDateLabel)
        addSubview(datePicker)
        addSubview(randomDateButton)
        addSubview(continueButton)
        
        curvedTopCard.addSubview(cardTitleLabel)
    }
    
    //Essa função não vai ficar aqui
    @objc private func randomDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/M/d"
        
        let date = dateFormatter.date(from: "\(Int.random(in: 1978...1998))/\(Int.random(in: 1...12))/\(Int.random(in: 1...28))") ?? Date()
        datePicker.setDate(date, animated: true)
    }
    
    private func setConstraints() {
        curvedTopCard.addConstraints(top: topAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, centerX: centerXAnchor, centerY: nil, paddingTop: -35, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 340)
        
        importantDateLabel.addConstraints(top: curvedTopCard.bottomAnchor, bottom: nil, leading: nil, trailing: nil, centerX: centerXAnchor, centerY: nil, paddingTop: 46, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        datePicker.addConstraints(top: importantDateLabel.bottomAnchor, bottom: nil, leading: leadingAnchor, trailing: trailingAnchor, centerX: nil, centerY: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        randomDateButton.addConstraints(top: datePicker.bottomAnchor, bottom: nil, leading: nil, trailing: nil, centerX: centerXAnchor, centerY: nil, paddingTop: 57, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 180, height: 45)
         
        continueButton.addConstraints(top: randomDateButton.bottomAnchor, bottom: nil, leading: nil, trailing: nil, centerX: centerXAnchor, centerY: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 180, height: 45)
        
        cardTitleLabel.addConstraints(top: nil, bottom: curvedTopCard.bottomAnchor, leading: curvedTopCard.leadingAnchor, trailing: curvedTopCard.trailingAnchor, centerX: nil, centerY: nil, paddingTop: 0, paddingLeft: 36, paddingBottom: -60, paddingRight: 70, width: 0, height: 0)
    }
}
