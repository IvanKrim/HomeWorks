//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Kalabishka Ivan on 17.05.2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultEmojiLabel: UILabel!
    @IBOutlet var descriptionTextLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
}

extension ResultViewController {
    
    private func updateResult() {
        // объявляем словарь
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        // в массиве answers находятся целиком экземпляры моделей
        // из каждого отдельного элемента коллекции мфы берем конкретный тип type и наполняем массив
        let animals = answers.map { $0.type }
        
        for animal in animals {
            // если в нашем словаре по ключу animal есть элемент
            // если мы можем извлечь по ключу значение из словаря то мы берем это значение
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                // если if не срабатывает то создается новая пара [тип животного : значение]
                frequencyOfAnimals[animal] = 1
            }
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType?) {
        resultEmojiLabel.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        descriptionTextLabel.text = animal?.definition ?? ""
    }
    
}
