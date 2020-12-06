//
//  AppDelegate.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import AlamofireNetworkActivityIndicator
import Firebase
import Kingfisher
import SnapKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Properties
    var window: UIWindow?
    
    // MARK: - UIApplicationDelegate
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpFirebase()
        setUpUI()
        displaySplash()
        return true
    }
}

// MARK: - Setup
private extension AppDelegate {
    func setUpFirebase() {
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
    }
    
    func setUpUI() {
        NetworkActivityIndicatorManager.shared.isEnabled = true
        Theme.configure()
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func displaySplash() {
        SplashConfigurator().configure()
    }
}
