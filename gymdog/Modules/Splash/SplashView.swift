//
//  SplashView.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

final class SplashView: BaseView {
    // MARK: - Properties
    private let logoImageView: UIImageView = {
        $0.image = Images.workout.image
        return $0
    }(UIImageView().style(Theme.Image.primary))
    
    // MARK: - Init
    convenience init() {
        self.init(frame: .zero)
        addViews()
        addConstraints()
    }
}

// MARK: - Setup
extension SplashView: Setup {
    func addViews() {
        addSubview(logoImageView)
    }
    
    func addConstraints() {
        logoImageView.snp.makeConstraints { maker in
            maker.center.equalTo(safeArea)
            maker.width.height.equalTo(128)
        }
    }
}
