//
//  ViewController.swift
//  trafficLight
//
//  Created by Nataly on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLabel: UIView!
    @IBOutlet var orangeLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var startBottom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.layer.masksToBounds = true
        redLabel.layer.cornerRadius =
            redLabel.bounds.size.width / 2
        
        
        
        orangeLabel.layer.cornerRadius = orangeLabel.frame.size.width / 2
        orangeLabel.clipsToBounds = true
        
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
        
        
        startBottom.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }

    @IBAction func start() {
    }
    
}

