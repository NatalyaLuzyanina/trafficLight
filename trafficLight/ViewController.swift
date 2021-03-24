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
        
        startBottom.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
       redLabel.layer.cornerRadius = redLabel.frame.width / 2
       orangeLabel.layer.cornerRadius = orangeLabel.frame.size.width / 2
       greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
   }
    
    @IBAction func start() {
        
        if redLabel.alpha != 1 && orangeLabel.alpha != 1 && greenLabel.alpha != 1 {
            redLabel.alpha = 1
            startBottom.setTitle("NEXT", for: .normal)
        } else if redLabel.alpha == 1 {
            redLabel.alpha = 0.3
            orangeLabel.alpha = 1
        } else if orangeLabel.alpha == 1 {
            orangeLabel.alpha = 0.3
            greenLabel.alpha = 1
        } else if greenLabel.alpha == 1 {
            greenLabel.alpha = 0.3
            redLabel.alpha = 1
        }
        
}
}
