//
//  User.swift
//  LoginApp
//
//  Created by Владимир Фалин on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "user",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let personImage: String
    let hobby: String
    let firstFavoriteСountrieImage: String
    let secondFavoriteСountrieImage: String
    let thirdFavoriteСountrieImage: String
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Vladimir",
            surname: "Falin",
            age: "37",
            personImage: "vladimir",
            hobby: "travel",
            firstFavoriteСountrieImage: "indonesia",
            secondFavoriteСountrieImage: "myanmar",
            thirdFavoriteСountrieImage: "india"
        )
    }
}

