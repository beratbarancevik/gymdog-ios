//
//  Theme.swift
//  gymdog
//
//  Created by Berat Cevik on 12/5/20.
//

import UIKit

// MARK: - Style
struct Style<View: UIView> {
    // MARK: - Properties
    let style: (View) -> Void
    
    // MARK: - Init
    init(_ style: @escaping (View) -> Void) {
        self.style = style
    }
    
    // MARK: - Functions
    func apply(to view: View) {
        style(view)
    }
}

// MARK: - Theme
enum Theme {
    // MARK: - Properties
    static var settingsTableViewStyle: UITableView.Style {
        return .insetGrouped
    }
    
    static func configureTheme() {
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
    }
    
    // MARK: - UI Component Styles
    enum Button {
        static let primary = Style<UIButton> {
            $0.setTitleColor(.primaryBackground, for: .normal)
            $0.backgroundColor = .primaryBackgroundReversed
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        }
    }
    
    enum Image {
        static let primary = Style<UIImageView> {
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true
            $0.tintColor = .primaryBackgroundReversed
        }
    }
    
    enum Label {
        enum Regular {
            static let primary = Style<UILabel> {
                $0.textColor = .primaryText
                $0.font = UIFont.systemFont(ofSize: 17)
                $0.numberOfLines = 1
            }
            
            static let tint = Style<UILabel> {
                $0.textColor = .tintColor
                $0.font = UIFont.systemFont(ofSize: 17)
                $0.numberOfLines = 1
            }
        }
        
        enum Large {
            static let primary = Style<UILabel> {
                $0.textColor = .primaryText
                $0.font = UIFont.systemFont(ofSize: 20)
                $0.numberOfLines = 1
            }
        }
    }
    
    enum NavigationBar {
        static let primary = Style<UINavigationBar> {
            let titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)]
            $0.titleTextAttributes = titleTextAttributes as [NSAttributedString.Key: Any]
            $0.tintColor = .primaryText
            $0.barTintColor = .primaryBackground
            $0.backgroundColor = .primaryBackground
            $0.isTranslucent = false
            $0.prefersLargeTitles = true
            let largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 27)]
            $0.largeTitleTextAttributes = largeTitleTextAttributes as [NSAttributedString.Key: Any]
        }
    }
    
    enum RefreshControl {
        static let primary = Style<UIRefreshControl> {
            $0.tintColor = .primaryBackgroundReversed
        }
    }
    
    enum Table {
        static let primary = Style<UITableView> {
            $0.backgroundColor = .primaryBackground
            $0.keyboardDismissMode = .onDrag
            $0.tableFooterView = UIView()
            $0.alwaysBounceVertical = true
        }
    }
    
    enum TextField {
        static let primary = Style<UITextField> {
            $0.tintColor = .primaryBackgroundReversed
            $0.font = UIFont.systemFont(ofSize: 17)
        }
    }
    
    enum View {
        static let primary = Style<UIView> {
            $0.backgroundColor = .primaryBackground
        }
    }
}
