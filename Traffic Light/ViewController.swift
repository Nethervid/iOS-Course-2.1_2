//
//  ViewController.swift
//  Traffic Light
//
//  Created by Артем on 19.08.2020.
//  Copyright © 2020 Artem Golubev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    @IBOutlet weak var stepperButton: UIButton!
    
    let alphaLightsOff: CGFloat = 0.3
    let alphaLightsOn: CGFloat = 1
    var section = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.alpha = alphaLightsOff
        yellowLightLabel.alpha = alphaLightsOff
        greenLightLabel.alpha = alphaLightsOff
        
        redLightLabel.layer.cornerRadius = redLightLabel.frame.size.width/2
        yellowLightLabel.layer.cornerRadius = yellowLightLabel.frame.size.width/2
        greenLightLabel.layer.cornerRadius = greenLightLabel.frame.size.width/2
        stepperButton.layer.cornerRadius = 15
    }
    
    @IBAction func stepperPressed() {
        if let title = stepperButton.titleLabel?.text, title != "Next" {
            stepperButton.setTitle("Next", for: .normal)
        }
        
        switch section {
        case 1:
            redLightLabel.alpha = alphaLightsOn
            greenLightLabel.alpha = alphaLightsOff
            section = 2
        case 2:
            redLightLabel.alpha = alphaLightsOff
            yellowLightLabel.alpha = alphaLightsOn
            section = 3
        case 3:
            yellowLightLabel.alpha = alphaLightsOff
            greenLightLabel.alpha = alphaLightsOn
            section = 1
        default:
            break
        }
    }
    
}

