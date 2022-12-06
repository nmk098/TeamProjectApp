//
//  ProfileViewController.swift
//  TeamProjectApp
//
//  Created by Ярослав Кочкин on 05.12.2022.
//


import UIKit


protocol SettingsVoewColorDelegate {
    
    func getColor(color: UIColor)
}


final class ProfileViewController: UIViewController {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var gitLable: UILabel!
    @IBOutlet weak var roleLable: UILabel!
    @IBOutlet weak var emailLable: UILabel!
    @IBOutlet weak var phoneLable: UILabel!
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var fullNameLable: UILabel!
    @IBOutlet weak var ebautMeLable: UILabel!
    
    
    @IBOutlet weak var personalStackView: UIStackView!
    @IBOutlet weak var eboutMeStackView: UIStackView!
    
    
    override func viewDidLayoutSubviews() {
        updateTheme()

    }
    
    override func viewWillLayoutSubviews() {
        updateTheme()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTheme()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateTheme()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        updateTheme()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.startColor = viewProfile.backgroundColor
        settingVC.delegate = self
    }
    
    
    
    @IBAction func actionSegment(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            personalStackView.isHidden = false
            eboutMeStackView.isHidden = true
        case 1:
            personalStackView.isHidden = true
            eboutMeStackView.isHidden = false
        default:
            break
        }
    }
}



// MARK: - Setup View
private extension ProfileViewController {
    
    func setupUI() {
        setupViewColor()
        setupImage()
    }
}


// MARK: - Setup Views
private extension ProfileViewController {
    
    func setupViewColor() {
        viewProfile.layer.cornerRadius = 10
        viewProfile.layer.masksToBounds = false
        viewProfile.layer.shadowColor = UIColor.black.cgColor
        viewProfile.layer.shadowOpacity = 0.5
        viewProfile.layer.shadowOffset = CGSize(width: -5.0, height: 15.0)
        viewProfile.layer.shadowRadius = 10
    }
    
    func setupImage() {
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = imageView.bounds.width / 2
    }
    
    func updateTheme() {
        view.backgroundColor = Theme.currentTheme.backgroundColor
        imageView.layer.borderColor = Theme.currentTheme.lineColor.cgColor
        lineView.backgroundColor = Theme.currentTheme.lineColor
//        lineView.backgroundColor = Theme.currentTheme.lineColor
    }
}


extension ProfileViewController: SettingsVoewColorDelegate {
    func getColor(color: UIColor) {
        viewProfile.backgroundColor = color
    }
}

