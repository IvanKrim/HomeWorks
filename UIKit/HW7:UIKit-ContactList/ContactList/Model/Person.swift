//
//  Person.swift
//  ContactList
//
//  Created by Kalabishka Ivan on 07.08.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var fullEmail: String {
        "\(name)\(email)"
    }
}

extension Person {
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        // создаем массивый элементов зараннее
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phone = DataManager.shared.phones.shuffled()
        
        // количество элементов набора возвращает результат этого метода
        let iterationCount = min(names.count, surnames.count, emails.count, phone.count)
        
        for index in 0..<iterationCount {
            // [index] проходимся по всем массивам и выбираем каждое значение по инжексу
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phone[index]
            )
            persons.append(person)
        }
        return persons
    }
}
// для системных изображений 
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


