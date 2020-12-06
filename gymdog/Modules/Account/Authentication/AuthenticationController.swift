//
//  AuthenticationController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

final class AuthenticationController: BaseController {
    // MARK: - Properties
    private let authenticationView = AuthenticationView()
    
    var interactor: AuthenticationInteractor?
    var router: AuthenticationRouter?
    
    // MARK: - Lifecycle
    override func loadView() {
        view = authenticationView
    }
}
