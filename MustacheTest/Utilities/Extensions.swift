//
//  Extensions.swift
//  MustacheTest
//
//  Created by Þórkatla Eva Víkingsdóttir on 12/08/2020.
//  Copyright © 2020 Þórkatla Eva Víkingsdóttir. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    //Constraints to pin a UIView to the SuperView
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints                             = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive           = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive   = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive     = true
    }
}

extension UIFont {
    static func openSansRegular(size: CGFloat) -> UIFont {
        let font = UIFont(name: "OpenSans", size: size)!
        return UIFontMetrics.default.scaledFont(for: font)
    }
    
    static func openSansBold(size: CGFloat) -> UIFont {
        let font = UIFont(name: "OpenSans-Bold", size: size)!
        return UIFontMetrics.default.scaledFont(for: font)
    }
}
