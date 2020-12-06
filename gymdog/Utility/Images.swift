//
//  Images.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

enum Images: String, CaseIterable {
    case account
    case workout
    
    var image: UIImage {
        return UIImage(named: self.rawValue)!
    }
}
