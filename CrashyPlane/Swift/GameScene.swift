//
//  GameScene.swift
//  CrashyPlane
//
//  Created by Shaver, Matt on 2/6/19.
//  Copyright © 2019 Shaver, Matt. All rights reserved.
//

import SpriteKit
import GameplayKit

// Calling the SceneKit and SceneKit Physics APIs
class GameScene: SKScene, SKPhysicsContactDelegate {
        
        //Introduce the variable player
        var player: SKSpriteNode!
        
        
        override func didMove(to view: SKView) {
            //Create player node.
            createPlayer()
        }
        
        
        
        //Move the Player
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        }
        
        
        //Create the player, and animate the player.
        func createPlayer() {
            let playerTexture = SKTexture(imageNamed: "player-1")
            player = SKSpriteNode(texture: playerTexture)
            player.zPosition = 10
            player.position = CGPoint(x: frame.width / 6, y: frame.height * 0.75)
            
            addChild(player)
            
            let frame2 = SKTexture(imageNamed: "player-2")
            let frame3 = SKTexture(imageNamed: "player-3")
            let animation = SKAction.animate(with: [playerTexture, frame2, frame3, frame2], timePerFrame: 0.01)
            let runForever = SKAction.repeatForever(animation)
            
            player.run(runForever)
        }
    }
    
    
    
    
    
    

