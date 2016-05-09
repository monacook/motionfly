//
//  ViewController4.swift
//  MotionFly
//
//  Created by Eric Nevin on 5/8/16.
//  Copyright © 2016 gavin. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    let titleArray = ["GyroX","GyroY","GyroZ"]
    
    let contents = [
        ("Rotates on pitch axis. For example, go to model and rotate the top of your phone towards yourself and see how the airplane flips","x:rotationRate.x - self.calibratedAcceleration.x, y: 0.0, z: 0.0"),
        ("Rotates on roll axis. For example, go to model and roll the phone sideways and see how the airplane rolls","x:0.0, y: rotationRate.y - self.calibratedAcceleration.y, z: 0.0"),
        ("Rotates on yaw axis. For example, go to model and rotate the phone as if you are throwing a frisbee and see how the airpane turns","x:0.0, y: 0.0, z: rotationRate.z - self.calibratedAcceleration.z"),
        ]

    @IBOutlet weak var titleLabel3: UILabel!
    @IBOutlet weak var contentLabel3: UILabel!
    
    @IBAction func DescriptionButton3(sender: AnyObject) {
        displayDescription()
    }
    
    @IBAction func SampleCodeButton3(sender: AnyObject) {
        displayCode()
    }
    
    func displayDescription() {
        contentLabel3.hidden = false
        contentLabel3.text = contents[2].0
    }
    func displayCode() {
        contentLabel3.hidden = false
        contentLabel3.text = contents[2].1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        contentLabel3.hidden = true
        titleLabel3.text = titleArray[2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
