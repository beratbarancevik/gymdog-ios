//
//  SplashController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

class SplashController: BaseController {
    // MARK: - UI Properties
    private let logoImageView: UIImageView = {
        $0.image = Images.workout.image
        return $0
    }(UIImageView().style(Theme.Image.primary))
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
