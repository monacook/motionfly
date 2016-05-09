//
//  GameScene.swift
//  hackatest2
//
//  Created by Eric Nevin on 5/9/16.
//  Copyright (c) 2016 Eric Nevin. All rights reserved.
//

import SpriteKit
import CoreMotion

class GameScene: SKScene {
    let manager = CMMotionManager()
    
    
    
    
    
    override func didMoveToView(view: SKView) {
        manager.startAccelerometerUpdates()
        manager.accelerometerUpdateInterval = 0.1
        manager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue()){
            (data, error) in
            self.physicsWorld.gravity = CGVectorMake(CGFloat((data?.acceleration.x)!) * 10, CGFloat((data?.acceleration.y)!) * 10)
        }
        
        
        
        
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    

   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
