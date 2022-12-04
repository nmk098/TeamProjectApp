//
//  MainScreenViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 02.12.2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func lessonsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLessonsStoryboard", sender: self)
    }
    
    @IBAction func goalsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToGoalsListStoryboard", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLessonsStoryboard" {
            guard segue.destination is LessonsViewController else { return }
            
            if segue.identifier == "goToGoalsListStoryboard" {
                guard segue.destination is GoalsListTableViewController else {
                    return}
            }
        }
    }
    
    
        }
    
