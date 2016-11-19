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
    var xDirection = CGFloat(1);
    var yDirection = CGFloat(1);
    override func didMove(to view: SKView) {

        redRectangule.position = CGPoint(x: 0, y: 0);
        self.addChild(redRectangule);
        
        spaceshipImage.position = CGPoint(x: 0, y: 0);
        spaceshipImage.setScale(0.25);
        spaceshipImage.zRotation = 1;
        self.addChild(spaceshipImage);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        spaceshipImage.zRotation += 0.1;
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if location.x > spaceshipImage.position.x {
                xDirection = CGFloat(1);
            } else {
                xDirection = CGFloat(-1);
            }
            
            if location.y > spaceshipImage.position.y {
                yDirection = CGFloat(1);
            } else {
                yDirection = CGFloat(-1);
            }
        }
    }
    override func update(_ currentTime: TimeInterval) {
        spaceshipImage.position.x += xDirection;
        spaceshipImage.position.y += yDirection;
    }
}
