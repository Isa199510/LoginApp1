//
//  Regisration.swift
//  LoginApp
//
//  Created by Иса on 06.11.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Isa",
            password: "2022",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var hobbies: [Hobbies]
    var biography: String
    var fullname: String {
        "\(name) \(surname)"
    }
    
    
    func getHobby() -> String {
        var hobbyString: [String] = []
        for item in hobbies {
            hobbyString.append(item.rawValue)
        }
        return hobbyString.joined(separator: ", ")
    }
    static func getPerson() -> Person {
        Person(
            name: "Иса",
            surname: "Арбухов",
            hobbies: [.higherMathematics, .programming],
            biography: """
Арбухов Иса, родился 31.10.1995г
Закончил школу в 2013г и в том же году поступил в технический университет.
Окончил университет в 2017г по направлению "Прикладная информатика в экономике"
"""
        )
    }
    
    
}

enum Hobbies: String {
    case swimming = "плавание"
    case running = "бег"
    case reading = "чтение"
    case walk = "прогулка"
    case higherMathematics = "высшая математика"
    case programming = "программирование"
}

