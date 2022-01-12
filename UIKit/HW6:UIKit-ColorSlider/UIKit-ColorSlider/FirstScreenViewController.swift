//
//  FirstScreenViewController.swift
//  UIKit-ColorSlider
//
//  Created by Kalabishka Ivan on 03.08.2021.
//

import UIKit

protocol SecondScreenViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class FirstScreenViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondScreenVC = segue.destination as? SecondScreenViewController else { return }
        secondScreenVC.delegate = self
        secondScreenVC.viewColor = view.backgroundColor
        
    }
}

// MARK: - ColorDelegate
extension FirstScreenViewController: SecondScreenViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color

        
        // этот метод сработает только по нажатию кнопки Done. На данном этапе мы подготавливаем метод
    }
    
}



