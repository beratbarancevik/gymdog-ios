//
//  BaseNavigationController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

class BaseNavigationController: UINavigationController {
    // MARK: - UI Properties
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if let rootViewController = viewControllers.last {
            return rootViewController.preferredStatusBarStyle
        }
        return .default
    }
    
    // MARK: - Init
    convenience init(rootViewController: BaseViewController, prefersLargeTitles: Bool = true) {
        self.init(rootViewController: rootViewController)
        navigationBar.prefersLargeTitles = prefersLargeTitles
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.style(Theme.View.primary)
        navigationBar.style(Theme.NavigationBar.primary)
    }
}
