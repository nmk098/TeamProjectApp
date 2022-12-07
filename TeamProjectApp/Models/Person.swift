//
//  Person.swift
//  TeamProjectApp
//
//  Created by Ярослав Кочкин on 07.12.2022.
//


struct User {
    
    let login: String
    let password: String
    let person: Person
}

struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    var eboutMe: String
    
    var fullName: String {
        name + " " + surname
    }
}


extension Person {
    static func getProfile() -> Dictionary<String, User> {
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surname
        let emails = DataStore.shared.email
        let phone = DataStore.shared.phone
        let passwords = DataStore.shared.password
        let eboutMe = DataStore.shared.eboutMe
        
        var user = Dictionary<String, User>()
        
        for index in 0..<names.count {
            user[names[index]] = User(
                login: names[index],
                password: passwords[index],
                person: Person(
                    name: names[index], surname: surnames[index],
                    email: emails[index],
                    phone: phone[index],
                    eboutMe: eboutMe[index]
                ))
        }
        return user
    }
}
