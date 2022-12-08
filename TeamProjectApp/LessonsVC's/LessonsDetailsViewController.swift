//
//  LessonsDetailsViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 03.12.2022.
//

import UIKit

class LessonsDetailsViewController: UIViewController {
    
    @IBOutlet var lessonsInfoLabel: UILabel!
    
    var lesson: ModulesLessons?
    
    private let primaryColor = UIColor(
        red: 110/255,
        green: 114/255,
        blue: 148/255,
        alpha: 1
    )
    private let secondaryColor =  UIColor(
        red: 240/255,
        green: 131/255,
        blue: 213/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lessonsInfoLabel.text = lesson?.description
        
        view.addVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
