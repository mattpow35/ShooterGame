//
//  GameScene.swift
//  ShooterGame
//
//  Created by Matt Powley on 6/29/17.
//  Copyright © 2017 Powley Apps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    
    private var player = SKSpriteNode()
    private var moveButton = SKSpriteNode()


    
    override func sceneDidLoad()
    {
        
        player = self.childNode(withName: "player") as! SKSpriteNode
        player.position.x = 0
        player.position.y = (-self.frame.height / 2) + 200
        
        moveButton = self.childNode(withName: "button") as! SKSpriteNode
        
        moveButton.position.x = 0
        moveButton.position.y = (-self.frame.height / 2)
        moveButton.size.width = self.frame.width
        moveButton.size.height = 200
    }
    
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
            
                if(moveButton.contains(location))
                {
            
                        player.run(SKAction .moveTo(x: location.x, duration: 0.5))
                    
                }
          
            
    
        }
        
       
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
            
            if(moveButton.contains(location))
            {
                
                player.run(SKAction .moveTo(x: location.x, duration: 0.5))
                
            }
            
        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {

    }
}
