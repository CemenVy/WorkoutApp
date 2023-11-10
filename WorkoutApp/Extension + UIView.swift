//
//  Extension + UIView.swift
//  WorkoutApp
//
//  Created by Семен Выдрин on 10.11.2023.
//

import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(
            x: 0,
            y: frame.height - height,
            width: frame.width,
            height: height
        )
        
        addSubview(separator)
    }
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(
            self,
            action: #selector(handelIn),
            for: [.touchDown, .touchDragInside]
        )
        button.addTarget(
            self,
            action: #selector(handleOut),
            for: [.touchDragOutside, .touchUpInside, .touchUpOutside, .touchDragExit, .touchCancel]
        )
        
    }
    @objc func handelIn() {
            UIView.animate(withDuration: 0.15) {
                self.alpha = 0.55
            }
        }
        
    @objc func handleOut() {
            UIView.animate(withDuration: 0.15) {
                self.alpha = 1
            }
        }
        
}
