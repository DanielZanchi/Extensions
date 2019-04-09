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
    public convenience init(rgbHEX: UInt) {
        self.init(
            red: CGFloat((rgbHEX & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbHEX & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbHEX & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    // Construct a color from rgb values 0-255
    public convenience init(r: Int, g: Int, b: Int, alpha: CGFloat) {
        self.init(
            red: CGFloat(r) / 255.0,
            green: CGFloat(g) / 255.0,
            blue: CGFloat(b) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    /**
     Construct a color from HSB values 0-360, 0-100, 0-100, 0-1
     
     *Values*
     
     `h` Hue goes from 0 to 360.
     
     `s` Saturation goes from 0 to 100.
     
     `b` Brightness goes from 0 to 100.
     
     'a' Alpha from 0 to 1.
     
     - Author:
     Daniel Zanchi
     - Version:
     0.1
     */
    public convenience init(h: Int, s: Int, b: Int, alpha: CGFloat) {
        self.init(
            hue: CGFloat(h) / 360,
            saturation: CGFloat(s) / 100,
            brightness: CGFloat(b) / 100,
            alpha: CGFloat(alpha)
        )
    }
}
