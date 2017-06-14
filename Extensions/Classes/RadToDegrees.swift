//
//  RadToDegrees.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 13/04/2017.
//  Copyright © 2017 Daniel Zanchi. All rights reserved.
//

import Foundation

public extension FloatingPoint {
    public var degreesToRadians: Self { return self * .pi / 180 }
    public var radiansToDegrees: Self { return self * 180 / .pi }
}
