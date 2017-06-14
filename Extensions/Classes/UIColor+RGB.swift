//
//  UIColorRGB.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 30/05/2017.
//  Copyright © 2017 Daniel Zanchi. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    // Construct a color from HEXRGB
    convenience init(rgbHEX: UInt) {
        self.init(
            red: CGFloat((rgbHEX & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbHEX & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbHEX & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    // Construct a color from rgb values 0-255
    convenience init(r: Int, g: Int, b: Int, alpha: CGFloat) {
        self.init(
            red: CGFloat(r) / 255.0,
            green: CGFloat(g) / 255.0,
            blue: CGFloat(b) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
