//
//  ViewController.swift
//  TrafficLights
//
//  Created by Николай Петров on 13.02.2022.
//

import UIKit

enum Lights {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLigth: UIView!
    @IBOutlet var yellowLigth: UIView!
    @IBOutlet var greenLigth: UIView!
    
    @IBOutlet var changeButton: UIButton!
    
    private var currentLight: Lights = .red
    
    private let lightOff: CGFloat = 0.1
    private let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.layer.cornerRadius = 15
        
        redLigth.alpha = lightOff
        yellowLigth.alpha = lightOff
        greenLigth.alpha = lightOff
        

    }
    
    override func viewWillLayoutSubviews() {
        redLigth.layer.cornerRadius = redLigth.frame.width / 2
        greenLigth.layer.cornerRadius = greenLigth.frame.width / 2
        yellowLigth.layer.cornerRadius = yellowLigth.frame.width / 2

    }
    
    
    @IBAction func changeLights() {
        
        changeButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenLigth.alpha = lightOff
            redLigth.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLigth.alpha = lightOff
            yellowLigth.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLigth.alpha = lightOff
            greenLigth.alpha = lightOn
            currentLight = .red
        }
    }
}

