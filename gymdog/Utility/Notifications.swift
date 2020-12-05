//
//  Notifications.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import Foundation

enum Notifications: String, CaseIterable {
    case shouldUpdateWorkouts
    
    var name: Notification.Name {
        return Notification.Name(self.rawValue)
    }
}
