//
//  ViewController.swift
//  TrafficLights
//
//  Created by Николай Петров on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLigth: UIView!
    @IBOutlet var yellowLigth: UIView!
    @IBOutlet var greenLigth: UIView!
    @IBOutlet var changeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLigth.alpha = 0.1
        yellowLigth.alpha = 0.1
        greenLigth.alpha = 0.1
        redLigth.layer.cornerRadius = 65
        yellowLigth.layer.cornerRadius = 65
        greenLigth.layer.cornerRadius = 65
        changeButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func changeLights() {
        switch redLigth.alpha {
        case let x where x == 1: redLigth.alpha = 0.1
            yellowLigth.alpha = 1
        case let x where x != 1 && yellowLigth.alpha == 1: yellowLigth.alpha = 0.1
            greenLigth.alpha = 1
        case let x where x != 1 && greenLigth.alpha == 1: changeButton.setTitle("START", for: .normal)
            greenLigth.alpha = 0.1
        case let x where x != 1: changeButton.setTitle("NEXT", for: .normal)
            redLigth.alpha = 1
            
        default: break
        }
        
//        if redLigth.alpha != 1 {
//            changeButton.setTitle("NEXT", for: .normal)
//            redLigth.alpha = 1
//        } else {
//            changeButton.setTitle("START", for: .normal)
//            redLigth.alpha = 0.1
//        }
    }

}

