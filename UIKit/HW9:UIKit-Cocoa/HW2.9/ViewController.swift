//
//  ViewController.swift
//  HW2.9
//
//  Created by Kalabishka Ivan on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animation = AnimationType.getRandomAnimation() // создаем анимацию
    // экземпляр является переменной так как мы постоянно вносим изменения
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description //передаем описание лейбла
    }
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = AnimationType.getRandomAnimation() //заново генерируем новую анимацию
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
