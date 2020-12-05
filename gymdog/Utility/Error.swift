//
//  Error.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

enum GenericError: CaseIterable, Error {
    case `default`
    case emailClient
    case internet
    
    var localizedDescription: String {
        switch self {
        case .default:
            return ""
        case .internet:
            return ""
        case .emailClient:
            return ""
        }
    }
}
