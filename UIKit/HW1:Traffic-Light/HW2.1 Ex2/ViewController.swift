//
//  ViewController.swift
//  HW2.1 Ex2
//
//  Created by Kalabishka Ivan on 23.03.2021.
//



import UIKit

enum CurrentLight {
    case redLight, yellowLight, greenLight
}

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    // MARK: - Private Properties
    private var currentLight = CurrentLight.redLight
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.bounds.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.height / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.height / 2
    }
    
    // MARK: - IB Action
    @IBAction func startButtonPressed() {
        if  startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        switchColor()
    }
}

extension ViewController {
    
    func switchColor() {
        switch currentLight {
        case .redLight:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellowLight
        case .yellowLight:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .greenLight
        case .greenLight:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .redLight
        }
    }
}
