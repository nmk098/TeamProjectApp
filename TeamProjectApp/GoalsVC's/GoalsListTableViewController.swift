//
//  GoalsListTableViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 03.12.22.
//

import UIKit

protocol newGoalDelegate: AnyObject {
    func getGoal() -> [Goals] 
}

class GoalsListTableViewController: UITableViewController {
    
    private var goalsList = Goals.getGoalList()
    
    weak var newGoal: newGoalDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goalsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath)
        let goal = goalsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = goal.goalTitle
        content.secondaryText = goal.goalDescription
        content.image = UIImage(named: "swiftLogo")
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell  
    }
    
    
    
    
    // MARK:  - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let detailsVC = segue.destination as? GoalsDetailsViewController else {return}
        detailsVC.goal = goalsList[indexPath.row]
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}


