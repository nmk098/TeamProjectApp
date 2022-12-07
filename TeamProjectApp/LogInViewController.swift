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
   
    private let users = Person.getProfile()
    private var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is MainScreenViewController else {  return }
        
    }

    
    @IBAction func logInButtonPressed() {
        guard checkLoginPassword() else {
            showAlert(
                withTitle: "Упс!",
                andMessage: "Неверное имя или пароль, ну есть же подсказки ;)"
            )
            clearTextFields()
            return
        }
        performSegue(withIdentifier: "openMainScreen", sender: nil)
    }
}



extension LogInViewController {
    
    // MARK: - TouchesBegan
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - UIAlertController
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    // MARK: - Private metods
    
    private func checkLoginPassword() -> Bool {
        guard let login = userName.text else {
            return false
        }
        guard let persone = users[login] else { return false }
        
        if persone.password == passwordTF.text {
            person = persone.person
            return true
        }
        return false
    }
    
    private func clearTextFields() {
        userName.text = nil
        passwordTF.text = nil
    }
}

