//
//  Resources.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inActive = UIColor(hexString: "#929DA5")
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
    }

    enum Titles {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
    }
    
    enum NavBatItemTitles {
        enum Overview {
            static let AllWorkoutsButton = "All Workouts"
        }
        enum Session {
            static let leftItem = "Pause"
            static let rightItem = "Finish"
        }
        enum Progress {
            static let leftItem = "Export"
            static let rightItem = "Details"
        }
    }

    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
