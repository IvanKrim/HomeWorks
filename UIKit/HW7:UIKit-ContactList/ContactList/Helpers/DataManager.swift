//
//  DataManager.swift
//  ContactList
//
//  Created by Kalabishka Ivan on 07.08.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Mark", "Igor", "Olga",
        "Sergey", "John", "Kate",
        "Elis", "Sasha", "Ivan"
    ]
    
    let surnames = [
        "Krim", "Black", "Brown",
        "Gray", "Sweet", "White",
        "Red", "Smith", "Greay"
    ]
    
    let emails = [
        "@bk.ru", "@gmail.com", "@mail.ru",
        "@yandex.ru", "@swiftbook.ru", "@qqq.ru",
        "@gfggfgf.ru", "@eweewe.ru", "@reree.ru"
    ]
    
    let phones = [
        "222-33-22", "333-22-33", "444-22-33",
        "555-11-22", "666-44-22", "232-11-23",
        "323-44-12", "444-23-12", "111-23-23"
    ]
}

