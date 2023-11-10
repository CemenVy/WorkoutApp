//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

final class OverviewController: BaseController {

    private let navBar = OverviewNavigationBar()
    
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 113),
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
    }
}

