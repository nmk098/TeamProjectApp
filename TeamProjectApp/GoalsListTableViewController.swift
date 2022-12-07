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
    override func numberOfSections(in tableView: UITableView) -> Int {
        }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            goalsList.count
        }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: <#T##IndexPath#>)
        
        return cell  
    }
       
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
    
    
    

