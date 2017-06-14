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
    static func colorTransitionAction(fromColor : UIColor, toColor : UIColor, duration : Double = 2.8, fill: Bool = true, stroke: Bool = true) -> SKAction
    {
        
        var frgba = [CGFloat(0.0), CGFloat(0.0), CGFloat(0.0), CGFloat(0.0)]
        var trgba = [CGFloat(0.0), CGFloat(0.0), CGFloat(0.0), CGFloat(0.0)]
        
        fromColor.getRed(&frgba[0], green: &frgba[1], blue: &frgba[2], alpha: &frgba[3])
        toColor.getRed(&trgba[0], green: &trgba[1], blue: &trgba[2], alpha: &trgba[3])
        
        return SKAction.customAction(withDuration: duration, actionBlock: { (node : SKNode!, elapsedTime : CGFloat) -> Void in
            let fraction = CGFloat(elapsedTime / CGFloat(duration))
            let transColor = UIColor(red: self.lerp(a: frgba[0], b: trgba[0], fraction: fraction),
                                     green: self.lerp(a: frgba[1], b: trgba[1], fraction: fraction),
                                     blue: self.lerp(a: frgba[2], b: trgba[2], fraction: fraction),
                                     alpha: self.lerp(a: frgba[3], b: trgba[3], fraction: fraction))
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
