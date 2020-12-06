//
//  TabRouter.swift
//  gymdog
//
//  Created by Berat Cevik on 12/6/20.
//

final class TabRouter: BaseRouter {
    // MARK: - Properties
    weak var controller: TabController?
}

// MARK: - Tab
enum Tab {
    case workout
}
