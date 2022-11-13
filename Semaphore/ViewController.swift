//
//  ViewController.swift
//  Semaphore
//
//  Created by Denis on 13.11.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    var numberOfLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
    }
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.clipsToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.clipsToBounds = true
    }

    @IBAction func startPressed() {
        startButton.setTitle("NEXT", for: .normal)
        numberOfLight += 1
        if numberOfLight == 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.5
        } else if numberOfLight == 2 {
            yellowLight.alpha = 1
            redLight.alpha = 0.5
        } else {
            greenLight.alpha = 1
            yellowLight.alpha = 0.5
            numberOfLight = 0
        }
    }
    
}

