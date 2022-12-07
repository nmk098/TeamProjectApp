//
//  EntryViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 07.12.2022.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var noteLabelTextView: UITextView!
    
    var noteTitle: String = ""
    var note: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = noteTitle
        noteLabelTextView.text = note
    }
    
}
