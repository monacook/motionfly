//
//  ViewController2.swift
//  MotionFly
//
//  Created by gavin on 5/7/16.
//  Copyright © 2016 gavin. All rights reserved.
//
import UIKit
import Foundation

class ViewController2: UIViewController {
    let titleArray = ["GyroX","GyroY","GyroZ"]
    
    let contents = [
        ("Rotates on pitch axis. For example, go to model and rotate the top of your phone towards yourself and see how the airplane flips","x:rotationRate.x - self.calibratedAcceleration.x, y: 0.0, z: 0.0"),
        ("Rotates on roll axis. For example, go to model and roll the phone sideways and see how the airplane rolls","x:0.0, y: rotationRate.y - self.calibratedAcceleration.y, z: 0.0"),
        ("Rotates on yaw axis. For example, go to model and rotate the phone as if you are throwing a frisbee and see how the airpane turns","x:0.0, y: 0.0, z: rotationRate.z - self.calibratedAcceleration.z"),
    ]
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentLabel.hidden = true
        titleLable.text = titleArray[0]
    }
    
    
    @IBAction func NextButton(sender: AnyObject) {
    }
    
    
    @IBAction func DescriptionButton(sender: AnyObject) {
        displayDescription()
    }
    

    @IBAction func SampleCodeButton(sender: AnyObject) {
        displayCode()
    }
    
    @IBAction func backButton(sender: AnyObject) {
    }
    
    func displayDescription() {
        contentLabel.hidden = false
        contentLabel.text = contents[0].0
    }
    func displayCode() {
        contentLabel.hidden = false
        contentLabel.text = contents[0].1
 
    }
    
    
    
    
    
}
