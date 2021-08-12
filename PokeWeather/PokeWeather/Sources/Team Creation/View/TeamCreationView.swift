//
//  TeamCreationView.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

struct TeamCreationViewConfig {
    let importantDateLabel: String = "Enter an important date for you"
}

class TeamCreationView: UIView {
    var delegate: vcTestProtocol?

    private var curvedTopCard: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: TeamUIConstants.curvedCardFrameSize.width, height: TeamUIConstants.curvedCardFrameSize.height)
        view.layer.cornerRadius = TeamUIConstants.curvedCardCornerRadius
        view.backgroundColor = TeamUIConstants.pokeWeatherTurquoise
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
        label.font = UIFont(name: "Helvetica Neue Bold", size: TeamUIConstants.cardTitleLabelFontSize)
        label.numberOfLines = 0
        return label
    }()
    
    private var importantDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica Neue", size: TeamUIConstants.dateLabelFontSize)
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
        button.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: TeamUIConstants.mainButtonFontSize)
        button.layer.cornerRadius = TeamUIConstants.mainButtonCornerRadius
        button.layer.borderWidth = TeamUIConstants.mainButtonBorderWidth
        button.layer.borderColor = TeamUIConstants.pokeWeatherTurquoise?.cgColor
        button.setTitleColor(TeamUIConstants.pokeWeatherTurquoise, for: .normal)
        button.addTarget(self, action: #selector(randomDate), for: .touchUpInside)
        button.contentEdgeInsets = .init(top: 15, left: 25, bottom: 15, right: 25)
        return button
    }()
    
    private var continueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue Bold", size: TeamUIConstants.dateLabelFontSize)
        button.layer.cornerRadius = TeamUIConstants.mainButtonCornerRadius
        button.layer.backgroundColor = TeamUIConstants.pokeWeatherTurquoise?.cgColor
        button.addTarget(self, action: #selector(continueToHome), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    init(delegate: vcTestProtocol) {
        super.init(frame: .zero)
        self.delegate = delegate
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
    
    func setupTeamCreationView(_ configuration: TeamCreationViewConfig) {
        importantDateLabel.text = configuration.importantDateLabel
    }
    
    //Essa função não vai ficar aqui. O lugar dela é como uma intent na viewmodel
    @objc private func randomDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/M/d"
        
        let date = dateFormatter.date(from: "\(Int.random(in: 1978...1998))/\(Int.random(in: 1...12))/\(Int.random(in: 1...28))") ?? Date()
        datePicker.setDate(date, animated: true)
    }
    
    @objc private func continueToHome() {
        delegate?.showHome()
    }
    
    private func setConstraints() {
        curvedTopCard.addConstraints(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, centerX: centerXAnchor, centerY: nil, paddingTop: -35.adjusted, height: 340.adjusted)
        
        importantDateLabel.addConstraints(top: curvedTopCard.bottomAnchor, centerX: centerXAnchor, paddingTop: 46.adjusted)
        
        datePicker.addConstraints(top: importantDateLabel.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 20.adjusted)
        
        randomDateButton.addConstraints(top: datePicker.bottomAnchor, centerX: centerXAnchor, paddingTop: 57.adjusted, height: 45.adjusted)
         
        continueButton.addConstraints(top: randomDateButton.bottomAnchor, centerX: centerXAnchor, centerY: nil, paddingTop: 16.adjusted, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 180.adjusted, height: 45.adjusted)
        
        cardTitleLabel.addConstraints(top: nil, bottom: curvedTopCard.bottomAnchor, leading: curvedTopCard.leadingAnchor, trailing: curvedTopCard.trailingAnchor, centerX: nil, centerY: nil, paddingTop: 0, paddingLeft: 36.adjusted, paddingBottom: -60.adjusted, paddingRight: 70.adjusted, width: 0, height: 0)
    }
    
    private struct TeamUIConstants {
        static let curvedCardFrameSize = (width: 414.adjusted, height: 340.adjusted)
        static let curvedCardCornerRadius = 40.adjusted
        static let cardTitleLabelFontSize = 32.0.adjusted
        static let dateLabelFontSize = 20.0.adjusted
        static let mainButtonFontSize = 19.0.adjusted
        static let mainButtonCornerRadius = 20.adjusted
        static let mainButtonBorderWidth = 2.adjusted
        static let pokeWeatherTurquoise = UIColor(named: "pokeWeatherTurquoise")
    }
    
    
}

//protocol ViewCodeConfiguration: AnyObject {
//    func setupViewCode()
//    func setupViewHierarchy()
//    func setupConstraints()
//    func configureViews()
//}
//
//extension ViewCodeConfiguration {
//    func setupViewCode() {
//        setupViewHierarchy()
//        setupConstraints()
//        configureViews()
//    }
//    func setupViewHierarchy() {}
//    func setupConstraints() {}
//    func configureViews() {}
//}
