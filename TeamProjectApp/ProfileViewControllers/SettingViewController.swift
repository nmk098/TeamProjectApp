//
//  SettingViewController.swift
//  TeamProjectApp
//
//  Created by Ярослав Кочкин on 05.12.2022.
//


import UIKit

final class SettingViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var themeSwich: UISwitch!
    
    private var rgba: CIColor = CIColor(red: 1, green: 1, blue: 1)
    var startColor: UIColor!
    var delegate: SettingsVoewColorDelegate!
    
    
    override func viewDidLayoutSubviews() {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    // MARK: - IBActions
    
    @IBAction func actionSloder(_ sender: UISlider) {
        
        switch sender {
        case redSlider:
            redLable.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenLable.text = String(format: "%.2f", greenSlider.value)
        default:
            blueLable.text = String(format: "%.2f", blueSlider.value)
        }
        updateViewColor()
    }
    
    
    @IBAction func actionSwich() {
        Theme.currentTheme = themeSwich.isOn ? DarkTheme() : LightTheme()
        updateTheme()
    }
    
    @IBAction func saveAction() {
        delegate.getColor(color: UIColor(
            red: rgba.red,
            green: rgba.green,
            blue: rgba.blue,
            alpha: 1
        ))
    }
}


// MARK: - Setup View
private extension SettingViewController {
    
    func setupUI() {
        rgba = CIColor(color: startColor)
        setupViewColor()
        setupSlider()
        setupLable()
        setupSwitch()
        setupViewLine()
    }
}


// MARK: - Setup Views
private extension SettingViewController {
    
    func setupViewColor() {
        viewColor.backgroundColor = startColor
        viewColor.layer.cornerRadius = 10
        viewColor.layer.masksToBounds = false
        viewColor.layer.shadowColor = UIColor.black.cgColor
        viewColor.layer.shadowOpacity = 0.5
        viewColor.layer.shadowOffset = CGSize(width: -5.0, height: 20.0)
        viewColor.layer.shadowRadius = 10
    }
    
    func setupViewLine() {
        lineView.layer.masksToBounds = false
        lineView.layer.shadowColor = startColor.cgColor
        lineView.layer.shadowOpacity = 0.5
        lineView.layer.shadowOffset = CGSize(width: 0.0, height: 10.0)
        lineView.layer.shadowRadius = 10
    }
    
    func setupSlider() {
        redSlider.value = Float(rgba.red)
        greenSlider.value = Float(rgba.green)
        blueSlider.value = Float(rgba.blue)
    }
    
    private func setupLable() {
        redLable.text = String(format: "%.2f", rgba.red)
        greenLable.text = String(format: "%.2f", rgba.green)
        blueLable.text = String(format: "%.2f", rgba.blue)
    }
    
    func setupSwitch() {
        if Theme.currentTheme is DarkTheme {
            themeSwich.isOn = true
        }
        updateTheme()
    }
    
    func updateViewColor() {
        rgba = CIColor(color: UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        )
        let color = UIColor(
            red: rgba.red,
            green: rgba.green,
            blue: rgba.blue,
            alpha: 1
        )
        viewColor.backgroundColor = color
        lineView.layer.shadowColor = color.cgColor
    }
    
    func updateTheme() {
        view.backgroundColor = Theme.currentTheme.backgroundColor
    }
}

