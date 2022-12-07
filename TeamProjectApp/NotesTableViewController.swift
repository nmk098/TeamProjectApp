//
//  NotesTableViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 07.12.2022.
//

import UIKit

class NotesTableViewController: UITableViewController {

    var models: [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func didTapAddButton() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "new") as? CreatingNotesViewController else { return }
        
        self.navigationController?.popToRootViewController(animated: true)
        vc.title = "New Note"
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.completion = { noteTitle, note in
            self.models.append((title: noteTitle, note))
            self.tableView.reloadData()
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    // MARK: - Table view data source
    
  
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notesCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = notesCell.defaultContentConfiguration()
        content.text = models[indexPath.row].title
        content.secondaryText = models[indexPath.row].note
        notesCell.contentConfiguration = content
        
        return notesCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "note") as? EntryViewController else { return }
        
        let model = models[indexPath.row]
        
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title = "Note"
        vc.noteTitle = model.title
        vc.note = model.note
        
        navigationController?.pushViewController(vc, animated: true)
    }
}



