//
//  GoalsDetailsViewController.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 07.12.22.
//

import UIKit

class GoalsDetailsViewController: UIViewController {

    @IBOutlet var imageForGoal: UIImageView!
    @IBOutlet var goalTitle: UILabel!
    
    var goal: Goals!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageForGoal.image = UIImage(named: "swiftLogo")
        goalTitle.text = goal.goalTitle
        imageForGoal.layer.cornerRadius = 186
    }
    
// MARK: - navigation
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
