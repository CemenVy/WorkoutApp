//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

final class SessionViewController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, with: Resources.NavBatItemTitles.Session.leftItem)
        addNavBarButton(at: .right, with: Resources.NavBatItemTitles.Session.rightItem)
    }
}
