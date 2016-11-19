//
//  GameScene.swift
//  spritekitetutorial
//
//  Created by Enrique Ismael Mendoza Robaina on 19/11/16.
//  Copyright © 2016 Coding.es. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let myNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200, height: 140));
        myNode.position = CGPoint(x: 0, y: 0);
        self.addChild(myNode);
        
        let myImage = SKSpriteNode(imageNamed: "Spaceship");
        myImage.position = CGPoint(x: 0, y: 0);
        self.addChild(myImage);
    }
}
