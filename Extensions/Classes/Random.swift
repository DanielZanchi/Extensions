//
//  CGFloat+Random.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 30/11/2016.
//  Copyright © 2016 Daniel Zanchi. All rights reserved.
//

import Foundation

extension Int {
    static func random(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
}
