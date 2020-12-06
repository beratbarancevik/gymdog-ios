//
//  TabController.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

import UIKit

class TabController: UITabBarController {
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
        viewControllers = [
            workoutHomeNavigationController
        ]
        configureTab(.workout, navigationController: workoutHomeNavigationController)
        
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
        case .workout:
            WorkoutHomeConfigurator(navigationController: navigationController).configure()
        }
    }
}
