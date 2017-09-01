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
    
    func multilinedLabelNode() {
        let creditsString = "Coded with love by Daniel Zanchi\n\nGraphics by Daniel Zanchi\n\nSome images were created by Freepik"
        print(creditsString)
        var creditsText = SKLabelNode(text: creditsString)
        creditsText.fontName = "YuKyo-Medium"
        creditsText.fontColor = SKColor.black
        creditsText.alpha = 1
        creditsText.fontSize = 16
        creditsText.verticalAlignmentMode = .center
        creditsText.name = "CreditsText"
        creditsText = creditsText.multilined()
        creditsText.position = centerOfScreen
        creditsText.zPosition = 13
    }
}


