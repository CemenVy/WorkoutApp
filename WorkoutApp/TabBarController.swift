//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white

        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let overviewNavController = NavigationController(rootViewController: OverviewController())
        let sessionNavController = NavigationController(rootViewController: SessionViewController())
        let progressNavController = NavigationController(rootViewController: ProgressViewController())
        let settingsNavController = NavigationController(rootViewController: SettingsViewController())

        overviewNavController.tabBarItem = UITabBarItem(
            title: Resources.Titles.TabBar.overview,
            image: Resources.Images.TabBar.overview,
            tag: Tabs.overview.rawValue
        )
        sessionNavController.tabBarItem = UITabBarItem(
            title: Resources.Titles.TabBar.session,
            image: Resources.Images.TabBar.session,
            tag: Tabs.session.rawValue
        )
        progressNavController.tabBarItem = UITabBarItem(
            title: Resources.Titles.TabBar.progress,
            image: Resources.Images.TabBar.progress,
            tag: Tabs.progress.rawValue
        )
        settingsNavController.tabBarItem = UITabBarItem(
            title: Resources.Titles.TabBar.settings,
            image: Resources.Images.TabBar.settings,
            tag: Tabs.settings.rawValue
        )
        
        viewControllers = [overviewNavController, sessionNavController, progressNavController, settingsNavController]
    }
    
}

