//
//  mainView.swift
//  MustacheTest
//
//  Created by Þórkatla Eva Víkingsdóttir on 12/08/2020.
//  Copyright © 2020 Þórkatla Eva Víkingsdóttir. All rights reserved.
//

import Foundation
import UIKit

//A Class to give each view a label.
final class NumberView: UIView {

    let numberLabel: UILabel = {
        let this = UILabel()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.backgroundColor = .clear
        this.textAlignment = .center
        this.textColor = Color.inactiveNumber
        this.font = UIFont.openSansRegular(size: 21)
        return this
    }()

    init() {
        super.init(frame: .zero)
        addSubview(numberLabel)
        numberLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        numberLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        numberLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        numberLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        numberLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MainView: UIView {
    
    //Views to hold the numbers in the background
    let numberView1: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "1"
        return this
    }()
    let numberView2: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "2"
        return this
    }()
    let numberView3: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "3"
        return this
    }()
    let numberView4: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "4"
        return this
    }()
    let numberView5: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "5"
        return this
    }()
    let numberView6: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "6"
        return this
    }()
    let numberView7: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "7"
        return this
    }()
    let numberView8: NumberView = {
        let this = NumberView()
        this.numberLabel.text = "8"
        return this
    }()

    
    let mySlider: UISlider = {
        let this = UISlider()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.layer.cornerRadius = 25
        this.backgroundColor = .clear
        this.minimumTrackTintColor = .clear
        this.maximumTrackTintColor = .clear
        this.thumbTintColor = Color.knob
        this.value = 1
        this.minimumValue = 1
        this.maximumValue = 8
        this.isContinuous = true
        return this
    }()
    
    let sliderBackgroundView: UIView = {
        let this = UIView()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.backgroundColor = Color.sliderBackgroundColor
        this.layer.cornerRadius = 25
        return this
    }()
    
    let sliderValueLabel: UILabel = {
        let this = UILabel()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.font = UIFont.openSansBold(size: 21)
        this.text = "1"
        this.textColor = Color.activeNumber
        this.textAlignment = .center
        return this
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        self.addSubview(mySlider)
        self.addSubview(sliderValueLabel)
        self.addSubview(sliderBackgroundView)
    }
    
    func setupLayout() {
        //A stackView to hold the numbers.
        let stackView: UIStackView = {
            let this = UIStackView(arrangedSubviews: [numberView1, numberView2, numberView3, numberView4, numberView5, numberView6, numberView7, numberView8])
            this.translatesAutoresizingMaskIntoConstraints = false
            this.axis = .horizontal
            this.distribution = .fill
            this.alignment = .center
            this.spacing = 5
            return this
        }()

        self.addSubview(stackView)
        self.bringSubviewToFront(mySlider)

        NSLayoutConstraint.activate([
            
            sliderValueLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            sliderValueLabel.bottomAnchor.constraint(equalTo: mySlider.topAnchor, constant: -30),
            sliderValueLabel.heightAnchor.constraint(equalToConstant: 50),
            sliderValueLabel.widthAnchor.constraint(equalTo: sliderValueLabel.heightAnchor),
            
            mySlider.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mySlider.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            mySlider.heightAnchor.constraint(equalToConstant: 50),
            mySlider.widthAnchor.constraint(equalToConstant: 350),
            
            sliderBackgroundView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            sliderBackgroundView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            sliderBackgroundView.heightAnchor.constraint(equalToConstant: 50),
            sliderBackgroundView.widthAnchor.constraint(equalToConstant: 350),
            
            stackView.centerYAnchor.constraint(equalTo: sliderBackgroundView.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: sliderBackgroundView.centerXAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            stackView.widthAnchor.constraint(equalToConstant: 350),
            
        ])
    }
}


