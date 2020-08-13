//
//  ViewController.swift
//  MustacheTest
//
//  Created by Þórkatla Eva Víkingsdóttir on 12/08/2020.
//  Copyright © 2020 Þórkatla Eva Víkingsdóttir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupGradientBackground()
        setupLayout()
        setupTargets()
    }
    
    @objc
    func sliderValueChanged() {
        mainView.sliderValueLabel.text = String(Int(roundf(mainView.mySlider.value)))
    }
    
    func setupView() {
        view.addSubview(mainView)
    }
    
    func setupGradientBackground() {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [Color.gradiantStart.cgColor, Color.gradiantEnd.cgColor]
        mainView.layer.insertSublayer(layer, at: 0)
    }
    
    func setupLayout() {
        mainView.pin(to: view)
    }
    
    func setupTargets() {
        mainView.mySlider.addTarget(self, action: #selector(sliderValueChanged), for: .touchUpInside)
    }
    
}

