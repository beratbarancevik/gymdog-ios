//
//  SplashConfigurator.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class SplashConfigurator: BaseConfigurator {
    // MARK: - Functions
    func configure() {
        let controller = SplashController()
        let interactor = SplashInteractor()
        let presenter = SplashPresenter()
        let router = SplashRouter()
        
        controller.interactor = interactor
        controller.router = router
        interactor.presenter = presenter
        presenter.controller = controller
        router.controller = controller
        
        WindowManager.shared.displayController(controller)
    }
}
