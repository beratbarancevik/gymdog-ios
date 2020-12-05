//
//  Encodable+Extensions.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import Foundation

extension Encodable {
    // MARK: - Properties
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
