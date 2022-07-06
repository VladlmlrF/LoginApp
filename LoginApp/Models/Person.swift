//
//  Person.swift
//  LoginApp
//
//  Created by Владимир Фалин on 05.07.2022.
//

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
}
