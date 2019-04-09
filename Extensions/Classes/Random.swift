//
//  CGFloat+Random.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 30/11/2016.
//  Copyright © 2016 Daniel Zanchi. All rights reserved.
//

import Foundation

import CoreGraphics

extension CGFloat {
    public static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    public static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat.random() * (max - min) + min
    }
}


public extension Int {
    public static func random(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
}
