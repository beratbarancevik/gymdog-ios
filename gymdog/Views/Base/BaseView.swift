//
//  BaseView.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

class BaseView: UIView {
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        style(Theme.View.primary)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        style(Theme.View.primary)
    }
}
