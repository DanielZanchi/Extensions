//
//  GameScene.swift
//  Extensions
//
//  Created by Daniel Zanchi on 14/06/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import SpriteKit
import Extensions

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
    }
    
    func changeColorToShapeNode() {
        let shape = SKShapeNode()
        shape.run(SKAction.colorTransitionAction(fromColor: UIColor.black, toColor: UIColor.white))
    }
}


