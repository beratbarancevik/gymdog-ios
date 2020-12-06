//
//  WorkoutHomeController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

final class WorkoutHomeController: BaseController {
    // MARK: - Properties
    let workoutHomeView = WorkoutHomeView()
    
    // MARK: - Lifecycle
    override func loadView() {
        view = workoutHomeView
    }
}
