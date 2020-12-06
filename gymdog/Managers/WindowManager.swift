//
//  WindowManager.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

class WindowManager {
    // MARK: - Properties
    static let shared = WindowManager()
    
    // MARK: - Init
    private init() {}
    
    // MARK: - Functions
    func displayController(_ controller: BaseController) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
        appDelegate.window?.rootViewController = controller
        appDelegate.window?.makeKeyAndVisible()
    }
    
    func displayController(_ controller: UITabBarController) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.window?.rootViewController = controller
        appDelegate.window?.makeKeyAndVisible()
    }
}
