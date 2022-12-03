//
//  LessonsViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 03.12.2022.
//

import UIKit

class LessonsViewController: UITableViewController {
    
    var filteredLists = [Lessons]()
    var isSearching = false
    
    let lists = [
        Lessons.getFirstModule(),
        Lessons.getSecondModule(),
        Lessons.getThirdModule(),
        Lessons.getFourthModule(),
        Lessons.getFifthModule(),
        Lessons.getSixthModule()
    ]
    
    let lessonsInfoLists = [
        ModulesLessons.getFirstModuleDescription(),
        ModulesLessons.getSecondModuleDescription(),
        ModulesLessons.getThirdModuleDescription(),
        ModulesLessons.getFourthModuleDescription(),
        ModulesLessons.getFifthModuleDescription(),
        ModulesLessons.getSixthModuleDescription()
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.rowHeight = 80
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        filteredLists.isEmpty ? lists.count : filteredLists.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        filteredLists.isEmpty ? lists[section].title : nil
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredLists.isEmpty ? lists[section].lessons.count : 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonsViewController", for: indexPath)
        
        let list = filteredLists.isEmpty ? lists[indexPath.section].lessons[indexPath.row] : filteredLists[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = list.lessonNumber
        content.secondaryText = list.lessonTitle
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let lessonDetailsVC = segue.destination as? LessonsDetailsViewController else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let lesson = lessonsInfoLists[indexPath.section].lessonsDescription[indexPath.row]
            lessonDetailsVC.lesson = lesson
        }
    }
}

