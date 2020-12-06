//
//  WorkoutHomeConfigurator.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class WorkoutHomeConfigurator: BaseConfigurator {
    // MARK: - Properties
    var navigationController: BaseNavigationController?
    
    // MARK: - Init
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    func configure() {
        let controller = WorkoutHomeController()
        navigationController?.setViewControllers([controller], animated: true)
    }
}
