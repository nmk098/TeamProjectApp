//
//  AddingGoalViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 07.12.22.
//

import UIKit

class AddingGoalViewController: UIViewController {
    
    @IBOutlet var goalTitleTF: UITextField!
    @IBOutlet var goalDescriptionTF: UITextField!
    
    @IBOutlet var saveGoalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        let goalsListVC = GoalsListTableViewController()
        goalsListVC.getNewGoal(title: goalTitleTF.text!, description: goalDescriptionTF.text!)
        
        
    }
    
// MARK: - navigation:
    }


//MARK: - extensions

extension AddingGoalViewController {
    func getNewGoal(title: String?, description: String?) {
        [Goals(goalTitle: title!, goalDescription: description!)]
    }
}
    

