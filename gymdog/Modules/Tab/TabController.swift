//
//  TabController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

final class TabController: UITabBarController {
    // MARK: - Properties
    var interactor: TabInteractor?
    var router: TabRouter?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
    }
}

// MARK: - Private Functions
private extension TabController {
    func configureTabs() {
        let workoutHomeNavigationController = generateNavigationController(tabImage: .workout)
        let authenticationNavigationController = generateNavigationController(tabImage: .account)
        viewControllers = [
            workoutHomeNavigationController,
            authenticationNavigationController
        ]
        configureTab(.workout, navigationController: workoutHomeNavigationController)
        configureTab(.account, navigationController: authenticationNavigationController)
        
        if let items = tabBar.items {
            items.forEach({
                $0.imageInsets = UIEdgeInsets.init(top: 5.5, left: 0, bottom: -5.5, right: 0)
            })
        }
    }
    
    func generateNavigationController(tabImage: Images) -> BaseNavigationController {
        let navigationController = BaseNavigationController()
        navigationController.tabBarItem.image = tabImage.image
        return navigationController
    }
    
    func configureTab<T: BaseNavigationController>(_ tab: Tab, navigationController: T) {
        switch tab {
        case .account:
            AuthenticationConfigurator(navigationController: navigationController).configure()
        case .workout:
            WorkoutHomeConfigurator(navigationController: navigationController).configure()
        }
    }
}
