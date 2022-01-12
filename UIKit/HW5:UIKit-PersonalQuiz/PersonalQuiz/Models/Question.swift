//
//  Model.swift
//  PersonalQuiz
//
//  Created by Kalabishka Ivan on 14.05.2021.
//

// 3
struct Question {
    let title: String
    //категория ответов
    let type: ResponseType
    let answers: [Answer]
    
    // static означает что мы можем вызывать этот метод не создавая экземпляр модели:
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .cat),
                    Answer(title: "Морковь", type: .rabbit),
                    Answer(title: "Кукуруза", type: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", type: .dog),
                    Answer(title: "Спать", type: .cat),
                    Answer(title: "Обниматься", type: .rabbit),
                    Answer(title: "Размножаться", type: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки в машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавимжу", type: .cat),
                    Answer(title: "Нервничаю", type: .rabbit),
                    Answer(title: "Не замечаю", type: .turtle),
                    Answer(title: "Обожаю", type: .dog)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    // соотносим каждый ответ с типом животного
    let type: AnimalType
}

enum ResponseType {
    //одиночный ответ
    case single
    case multiple
    //ответ из диапазона
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    // описание для каждого кейса - вычисляемое свойство
    var definition: String {
        switch self {
        
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество"
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях "
        }
    }
}
