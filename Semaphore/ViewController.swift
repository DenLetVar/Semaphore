//
//  ViewController.swift
//  Semaphore
//
//  Created by Denis on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    var light = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.size.height
        yellowLight.layer.cornerRadius = yellowLight.frame.size.height
        greenLight.layer.cornerRadius = greenLight.frame.size.width
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    @IBAction func buttonPressed() {
        startButton.setTitle("Next", for: .normal)
        light += 1
        switch light {
        case 1: redLight.alpha = 1; yellowLight.alpha = 0.3; greenLight.alpha = 0.3
        case 2: yellowLight.alpha = 1; redLight.alpha = 0.3; greenLight.alpha = 0.3
        case 3: greenLight.alpha = 1; redLight.alpha = 0.3; yellowLight.alpha = 0.3
        default:light = 0
        }
        
        
       
    }
}
    
  
    
    

    


