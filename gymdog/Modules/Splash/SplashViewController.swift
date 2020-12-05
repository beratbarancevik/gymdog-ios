//
//  SplashViewController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

class SplashViewController: BaseViewController {
    // MARK: - UI Properties
    private let logoImageView: UIImageView = {
        $0.image = Images.workout.image
        return $0
    }(UIImageView().style(Theme.Image.primary))
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addConstraints()
    }
}

// MARK: - Setup
extension SplashViewController: Setup {
    func addViews() {
        view.addSubview(logoImageView)
    }
    
    func addConstraints() {
        logoImageView.snp.makeConstraints { maker in
            maker.center.equalTo(safeArea)
            maker.width.height.equalTo(128)
        }
    }
}
