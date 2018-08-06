//
//  UILabel + BubbleAnimation.swift
//  Extensions
//
//  Created by Daniel Zanchi on 06/08/2018.
//

import UIKit

public extension UILabel {
    func bounceAnimation(duration: TimeInterval, scaleFactor: CGFloat = 1.1) {
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        }, completion: { _ in
            UIView.animate(withDuration: duration, delay: 0.03, options: .curveEaseIn , animations: {
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: nil)
        })
    }
}
