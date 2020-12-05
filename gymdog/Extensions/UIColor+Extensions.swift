//
//  UIColor+Extensions.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

extension UIColor {
    // MARK: - Tint Colors
    static var tintColor: UIColor {
        return Colors.tint.color
    }
    
    // MARK: - Text Colors
    static var primaryText: UIColor {
        return .label
    }
    
    static var secondaryText: UIColor {
        return .secondaryLabel
    }
    
    // MARK: - Background Colors
    static var primaryBackground: UIColor {
        return .systemBackground
    }
    
    static var secondaryBackground: UIColor {
        return .secondarySystemBackground
    }
    
    static var tertiaryBackground: UIColor {
        return .tertiarySystemBackground
    }
    
    // MARK: - Reversed Colors
    static var primaryBackgroundReversed: UIColor {
        return Colors.primaryBackgroundReversed.color
    }
    
    // MARK: - Init
    convenience init(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Double = 1.0) {
        let redValue = CGFloat(red) / 255
        let greenValue = CGFloat(green) / 255
        let blueVlue = CGFloat(blue) / 255
        let alphaValue = CGFloat(alpha)
        self.init(red: redValue, green: greenValue, blue: blueVlue, alpha: alphaValue)
    }
}
