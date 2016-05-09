//
//  ViewController3.swift
//  MotionFly
//
//  Created by Eric Nevin on 5/8/16.
//  Copyright © 2016 gavin. All rights reserved.
//

import UIKit
import Foundation

class ViewController3: UIViewController {
    let titleArray = ["GyroX","GyroY","GyroZ"]
    
    let contents = [
        ("Rotates on pitch axis. For example, go to model and rotate the top of your phone towards yourself and see how the airplane flips","x:rotationRate.x - self.calibratedAcceleration.x, y: 0.0, z: 0.0"),
        ("Rotates on roll axis. For example, go to model and roll the phone sideways and see how the airplane rolls","x:0.0, y: rotationRate.y - self.calibratedAcceleration.y, z: 0.0"),
        ("Rotates on yaw axis. For example, go to model and rotate the phone as if you are throwing a frisbee and see how the airpane turns","x:0.0, y: 0.0, z: rotationRate.z - self.calibratedAcceleration.z"),
        ]

    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var contentLabel2: UILabel!
    
    @IBAction func DescriptionLabel2(sender: AnyObject) {
        displayDescription()
    }
    @IBAction func SampleCodeLabel2(sender: AnyObject) {
        displayCode()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentLabel2.hidden = true
        titleLabel2.text = titleArray[1]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayDescription() {
        contentLabel2.hidden = false
        contentLabel2.text = contents[1].0
    }
    func displayCode() {
        contentLabel2.hidden = false
        contentLabel2.text = contents[1].1
        
    }

}
