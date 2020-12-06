//
//  SplashController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

final class SplashController: BaseController {
    // MARK: - Properties
    private let splashView = SplashView()
    
    var interactor: SplashInteractor?
    var router: SplashRouter?
    
    // MARK: - Lifecycle
    override func loadView() {
        view = splashView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        router?.displayTabController()
    }
    
    deinit {
        print("SplashController deinited")
    }
}
