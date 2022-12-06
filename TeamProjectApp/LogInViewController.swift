//
//  ViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 01.12.22.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var LogIn: UIButton!
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordTF: UITextField!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is MainScreenViewController else {  return }
    }

    @IBAction func logInButtonPressed() {
    }
}

