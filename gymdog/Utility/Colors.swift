//
//  Colors.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

enum Colors: String, CaseIterable {
    case primaryBackgroundReversed = "primary-background-reversed"
    case tint
    
    var color: UIColor {
        return UIColor(named: self.rawValue)!
    }
}
