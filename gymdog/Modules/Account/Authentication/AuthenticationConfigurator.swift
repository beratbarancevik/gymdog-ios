//
//  AuthenticationConfigurator.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class AuthenticationConfigurator: BaseConfigurator {
    // MARK: - Properties
    var navigationController: BaseNavigationController?
    
    // MARK: - Init
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    func configure() {
        let controller = AuthenticationController()
        navigationController?.setViewControllers([controller], animated: true)
    }
}
