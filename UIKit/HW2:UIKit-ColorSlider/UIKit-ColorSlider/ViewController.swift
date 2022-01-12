//
//  ViewController.swift
//  UIKit-ColorSlider
//
//  Created by Kalabishka Ivan on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // 1
    @IBOutlet var viewDisplay: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .opaqueSeparator
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor() // 3
        setValue(for: redLabel, greenLabel, blueLabel) // 5
    }
    
    // 2
    @IBAction func slidersAction(_ sender: UISlider) {
        setColor() // 3
        
        // 6
        switch sender {
        case redSlider: setValue(for: redLabel)
        case greenSlider: setValue(for: greenLabel)
        default: setValue(for: blueLabel)
        }
    }
}

// MARK: - Extension
extension ViewController {
    // 3
    private func setColor() {
        viewDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    //
    //    private func slidersValueLabael() {
    //        redLabel.text = String(format: "%.2f", redSlider.value)
    //        greenLabel.text = String(format: "%.2f", greenSlider.value)
    //        blueLabel.text = String(format: "%.2f", blueSlider.value)
    //    }
    //
    
    // 5
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                label.text = string(from: redSlider)
            case greenLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
    
    // 4
    // Работа со слайдером
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    
    
    
}
