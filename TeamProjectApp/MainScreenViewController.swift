//
//  MainScreenViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 02.12.2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    

    @IBOutlet var goalsButton: UIButton!
    @IBOutlet var lessonsButton: UIButton!
    @IBOutlet var bioButton: UIButton!
    @IBOutlet var notesButton: UIButton!
    
    override func viewDidLoad() {
        goalsButton.layer.cornerRadius = goalsButton.frame.height / 2
        lessonsButton.layer.cornerRadius = lessonsButton.frame.height / 2
        bioButton.layer.cornerRadius = bioButton.frame.height / 2
        notesButton.layer.cornerRadius = notesButton.frame.height / 2
    }
    
    @IBAction func lessonsButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func goalsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToGoalsListStoryboard", sender: self)
    }
    
    @IBAction func notesButtonTapped(_ sender: UIButton) {
    }
    
    var persone: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLessonsStoryboard" {
            guard segue.destination is LessonsViewController else { return }
        }
        
        if segue.identifier == "goToProfile" {
            guard let navigationVC = segue.destination as? UINavigationController else { return }
            guard let profileVC = navigationVC.topViewController as? ProfileViewController else { return }
            
            profileVC.persone = persone
        }
        
        if segue.identifier == "goToGoalsListStoryboard" {
            guard let navigationsVC = segue.destination as? UINavigationController else { return }
            guard navigationsVC.topViewController is GoalsListTableViewController else {return}
        }
        
        if segue.identifier == "goToNotesStoryboard" {
            guard segue.destination is NotesTableViewController else { return }
        }
    }
}

