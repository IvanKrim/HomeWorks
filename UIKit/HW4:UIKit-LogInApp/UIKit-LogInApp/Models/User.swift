//
//  User.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 22.07.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Login",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let description: String
    let avatar: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person{
        Person(
            name: "Ivan",
            surname: "Krim",
            age: "25",
            description: "SMTH interesting information",
            avatar: "tr"
        )
    }
}
