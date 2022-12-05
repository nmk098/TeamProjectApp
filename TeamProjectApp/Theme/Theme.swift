//
//  Theme.swift
//  TeamProjectApp
//
//  Created by Ярослав Кочкин on 05.12.2022.
//

import UIKit

protocol ThemeProtocol {
    
    var backgroundColor: UIColor { get }
    var lineColor: UIColor { get }
}


class Theme {
    
    static var currentTheme: ThemeProtocol = LightTheme()
    
}
