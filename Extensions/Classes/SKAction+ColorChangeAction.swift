//
//  ColorChangeShape.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 03/06/2017.
//  Copyright © 2017 Daniel Zanchi. All rights reserved.
//

import SpriteKit

extension SKAction {
    // Returns an action to change the color of a SKShapeNode
    static public func colorTransitionAction(fromColor : UIColor, toColor : UIColor, duration : Double = 2.8, fill: Bool = true, stroke: Bool = true) -> SKAction
    {
        var f0 = CGFloat(0.0)
        var f1 = CGFloat(0.0)
        var f2 = CGFloat(0.0)
        var f3 = CGFloat(0.0)
        
        var t0 = CGFloat(0.0)
        var t1 = CGFloat(0.0)
        var t2 = CGFloat(0.0)
        var t3 = CGFloat(0.0)

//        var frgba = [CGFloat(0.0), CGFloat(0.0), CGFloat(0.0), CGFloat(0.0)]
//        var trgba = [CGFloat(0.0), CGFloat(0.0), CGFloat(0.0), CGFloat(0.0)]
        
        fromColor.getRed(&f0, green: &f1, blue: &f2, alpha: &f3)
        toColor.getRed(&t0, green: &t1, blue: &t2, alpha: &t3)
        
        return SKAction.customAction(withDuration: duration, actionBlock: { (node : SKNode!, elapsedTime : CGFloat) -> Void in
            let fraction = CGFloat(elapsedTime / CGFloat(duration))
            let transColor = UIColor(red: self.lerp(a: f0, b: t0, fraction: fraction),
                                     green: self.lerp(a: f1, b: t1, fraction: fraction),
                                     blue: self.lerp(a: f2, b: t2, fraction: fraction),
                                     alpha: self.lerp(a: f3, b: t3, fraction: fraction))
            if fill {
                (node as! SKShapeNode).fillColor = transColor
            }
            if stroke {
                (node as! SKShapeNode).strokeColor = transColor
            }
        }
        )
    }
    
    static func lerp(a : CGFloat, b : CGFloat, fraction : CGFloat) -> CGFloat
    {
        return (b-a) * fraction + a
    }

}
