//
//  SplashRouter.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class SplashRouter: BaseRouter {
    // MARK: - Properties
    weak var controller: SplashController?
    
    // MARK: - Functions
    func displayTabController() {
        TabConfigurator().configure()
    }
}
