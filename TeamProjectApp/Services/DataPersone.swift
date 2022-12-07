//
//  DataPersone.swift
//  TeamProjectApp
//
//  Created by Ярослав Кочкин on 07.12.2022.
//

import Foundation


class DataStore {
    
    static let shared = DataStore()
    
    let names = ["Ярослав",
                 "Арина",
                 "Максим",
                 "Никита"]
    
    let surname = ["Кочкин",
                   "Коханова",
                   "Жиляев",
                   "Курюмов"]
    
    let email = ["qqqq@mai.ru",
                  "wwww@mai.ru",
                  "eeee@mai.ru",
                  "rrrr@mai.ru"]
    
    let phone = ["+789621123",
                 "+789621434",
                 "+789626554",
                 "+789620987"]
    
    let password = ["1111",
                    "2222",
                    "3333",
                    "4444"]
    
    let eboutMe = ["Привет меня зовут Ярослав я из Новосибирска, очень рад знакомству!",
                   "Привет меня зовут Арина я из Москвы, очень рад знакомству!",
                   "Привет меня зовут Максим я из Москвы, очень рад знакомству!",
                   "Привет меня зовут Никита я из Москвы, очень рад знакомству!",]
    
    private init() {}
}
