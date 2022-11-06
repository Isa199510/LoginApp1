//
//  Regisration.swift
//  LoginApp
//
//  Created by Иса on 06.11.2022.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            userName: "Isa",
            password: "2022",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var hobbies: [Hobbies]
    
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
            hobbies: [.higherMathematics, .programming]
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
