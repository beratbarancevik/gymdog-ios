//
//  UIView+Extensions.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

extension UIView {
    // MARK: - Functions
    @discardableResult
    func style<V>(_ style: Style<V>) -> V {
        let view = self as! V
        style.apply(to: view)
        return view
    }
    
    func setHidden(_ hidden: Bool) {
        self.isHidden = hidden
    }
}
