
//
//  GameViewController3.swift
//  MotionFly
//
//  Created by gavin on 5/6/16.
//  Copyright (c) 2016 gavin. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit
import CoreMotion


class GameViewController3: UIViewController{
    
    var viewController4 = ViewController4()
    
    var motionManager = CMMotionManager()
    var numberFormatter = NSNumberFormatter()
    var calibratedAcceleration = CMAcceleration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create a new scene
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        //        let audio = SCNAudioSource(named: "art.scnassets/airplane.mp3")
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = SCNLightTypeOmni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = SCNLightTypeAmbient
        ambientLightNode.light!.color = UIColor.darkGrayColor()
        scene.rootNode.addChildNode(ambientLightNode)
        
        // retrieve the ship node
        let ship = scene.rootNode.childNodeWithName("ship", recursively: false)!
        
        // animate the 3d object
        if self.motionManager.deviceMotionAvailable {
            motionManager.startGyroUpdatesToQueue(NSOperationQueue.currentQueue()!){ (gyroData: CMGyroData?, NSError) -> Void in
                ship.runAction(SCNAction.rotateByX(0.0, y: CGFloat(gyroData!.rotationRate.y - self.calibratedAcceleration.y), z: 0.0 , duration: 10))
            }
            
        }
        
        //        ship.runAction(SCNAction.playAudioSource(audio!, waitForCompletion: true))
        
        // retrieve the SCNView
        let scnView = self.view as! SCNView
        
        // set the scene to the view
        scnView.scene = scene
        
        // allows the user to manipulate the camera
        scnView.allowsCameraControl = false
        
        // show statistics such as fps and timing information
        scnView.showsStatistics = true
        
        // configure the view
        scnView.backgroundColor = UIColor.blackColor()
        
    }
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    
    
}

