//
//  BaseController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import RxSwift
import SwiftMessages
import UIKit

@objc protocol Setup {
    @objc optional func setUpUI()
    func addViews()
    func addConstraints()
    @objc optional func addObservers()
}

class BaseController: UIViewController {
    // MARK: - UI Properties
    var safeArea: UILayoutGuide {
        return view.safeAreaLayoutGuide
    }
    
    // MARK: - Properties
    #if DEBUG
    /// Used for UI testing
    var isRunningTests: Bool {
        return NSClassFromString("XCTest") != nil
    }
    #endif
    
    let disposeBag = DisposeBag()
    
    let keyboardHeightDidChange = PublishSubject<CGFloat>()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.style(Theme.View.primary)
    }
    
    // MARK: - Keyboard
    func registerKeyboardListener() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeHeight), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeHeight), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func keyboardWillChangeHeight(_ notification: Notification) {
        if let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue.height {
            keyboardHeightDidChange.onNext(keyboardHeight)
        }
    }
    
    // MARK: - Alerts
    func showError(_ error: Error? = nil) {
        SwiftMessages.hideAll()
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.error)
        view.configureDropShadow()
        view.configureContent(body: (error?.localizedDescription ?? "default_error".localized))
        var config = SwiftMessages.Config()
        config.presentationStyle = .top
        config.presentationContext = .automatic
        config.duration = .seconds(seconds: 1.5)
        config.dimMode = .gray(interactive: true)
        config.interactiveHide = true
        config.preferredStatusBarStyle = .lightContent
        SwiftMessages.show(config: config, view: view)
    }
}
