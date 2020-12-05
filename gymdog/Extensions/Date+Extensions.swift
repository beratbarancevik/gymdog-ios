//
//  Date+Extensions.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import Foundation

extension Date {
    // MARK: - Properties
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
        return dateFormatter
    }
    
    var description: String {
        return dateFormatter.string(from: self)
    }
}
