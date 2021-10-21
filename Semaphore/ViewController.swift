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
        
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    override func viewWillLayoutSubviews (){
        redLight.layer.masksToBounds = true
        redLight.layer.cornerRadius = redLight.frame.height / 2
        redLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        yellowLight.clipsToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.clipsToBounds = true
    }
   
    @IBAction func buttonPressed() {
        startButton.setTitle("Next", for: .normal)
        if light == 0 {
        redLight.alpha = 1; yellowLight.alpha = 0.3; greenLight.alpha = 0.3
            light += 1
        } else if light == 1 {
            yellowLight.alpha = 1; redLight.alpha = 0.3; greenLight.alpha = 0.3
            light += 1
        } else if light == 2 {
            greenLight.alpha = 1; redLight.alpha = 0.3; yellowLight.alpha = 0.3
            light = 0
        }
        
        

       
    }
}
    
  
    
    

    


