//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

final class OverviewNavigationBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
    
    func allWorkoutsButtonAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
        print("All Workouts button work")
    }
    
    func addButtonAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
        print("Add button work")
    }
}

extension OverviewNavigationBar {
    override func addViews() {
        super.addViews()
        
        addView(allWorkoutsButton)
        addView(addButton)
        addView(titleLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        
        titleLabel.text = Resources.Titles.NavBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(Resources.NavBatItemTitles.Overview.AllWorkoutsButton)
        
        addButton.setImage(Resources.Images.Common.addIcon, for: .normal)
        
    }
}
