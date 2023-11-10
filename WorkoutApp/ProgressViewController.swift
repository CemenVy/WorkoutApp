//
//  ProgressViewController.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

final class ProgressViewController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, with: Resources.NavBatItemTitles.Progress.leftItem)
        addNavBarButton(at: .right, with: Resources.NavBatItemTitles.Progress.rightItem)
    }
}
