//
//  GoalsListTableViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 03.12.22.
//

import UIKit

class GoalsListTableViewController: UITableViewController {
    
    private var goalsList = Goals.getGoalList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        content.image = UIImage(named: "star")
        cell.contentConfiguration = content
        return cell  
    }
    
    // MARK: Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
       
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
    
    
    

