//
//  GoalsListTableViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 03.12.22.
//

import UIKit

class GoalsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 5
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 0
        }
        
        
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    // MARK: - navigation
    
  
        
    }
    
    
    

