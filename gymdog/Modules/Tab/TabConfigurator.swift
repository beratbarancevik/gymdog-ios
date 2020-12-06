//
//  TabConfigurator.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class TabConfigurator: BaseConfigurator {
    // MARK: - Functions
    func configure() {
        let controller = TabController()
        let interactor = TabInteractor()
        let presenter = TabPresenter()
        let router = TabRouter()
        
        controller.interactor = interactor
        controller.router = router
        interactor.presenter = presenter
        presenter.controller = controller
        router.controller = controller
        
        WindowManager.shared.displayController(controller)
    }
}
