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
                 "Никита"]
    
    let surname = ["Кочкин",
                   "Коханова",
                   "Курюмов"]
    
    let email = ["qqqq@mai.ru",
                  "wwww@mai.ru",
                  "rrrr@mai.ru"]
    
    let phone = ["+789621123",
                 "+789621434",
                 "+789620987"]
    
    let password = ["1111",
                    "2222",
                    "4444"]
    
    let eboutMe = ["Привет! Mеня зовут Ярослав я из Новосибирска, я работал над этим экраном и над экраном авторизации, очень рад знакомству!",
                   "Привет! Mеня зовут Арина я из Казани, я работала над экраном Lessons и  Notes^ очень рада знакомству!",
                   "Привет! Mеня зовут Никита я из Тбилиси, я работал над экраном Goals и был тимлидом, очень рад знакомству!"]
    
    private init() {}
}
