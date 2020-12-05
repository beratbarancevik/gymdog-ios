//
//  String+Extensions.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import Foundation

extension String {
    // MARK: - Properties
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
