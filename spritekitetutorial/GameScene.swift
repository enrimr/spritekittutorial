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
    
    let redRectangule = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200, height: 140));
    let spaceshipImage = SKSpriteNode(imageNamed: "Spaceship");
    
    override func didMove(to view: SKView) {

        redRectangule.position = CGPoint(x: 0, y: 0);
        self.addChild(redRectangule);
        
        spaceshipImage.position = CGPoint(x: 0, y: 0);
        spaceshipImage.setScale(0.25);
        spaceshipImage.zRotation = 1;
        self.addChild(spaceshipImage);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        spaceshipImage.position.y += 1;
        spaceshipImage.zRotation += 0.1;
    }
    override func update(_ currentTime: TimeInterval) {

    }
}
