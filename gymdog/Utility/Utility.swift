//
//  Utility.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

class Utility {
    // MARK: - Properties
    static let shared = Utility()
    
    var appVersion: String {
        guard let currentVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else { return "-" }
        return currentVersion
    }
    
    var deviceSettings: URL {
        return URL(string: UIApplication.openSettingsURLString)!
    }
    
    // MARK: - Init
    private init() {}
}
