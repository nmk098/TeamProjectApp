//
//  MainScreenViewController.swift
//  TeamProjectApp
//
//  Created by Arina on 02.12.2022.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBAction func lessonsButtonTapped(_ sender: UIButton) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLessonsStoryboard" {
            guard segue.destination is LessonsViewController else { return }
        }
    }
}
