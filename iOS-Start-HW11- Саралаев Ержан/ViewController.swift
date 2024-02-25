//
//  ViewController.swift
//  iOS-Start-HW11- Саралаев Ержан
//
//  Created by Ertannic Saralay on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - loginField
        loginTextField.layer.shadowColor = UIColor.black.cgColor
        loginTextField.layer.shadowOpacity = 0.3
        loginTextField.layer.shadowOffset = .zero
        loginTextField.layer.shadowRadius = 10
        loginTextField.layer.shouldRasterize = true
        loginTextField.layer.rasterizationScale = UIScreen.main.scale
        loginTextField.textColor = .gray
        loginTextField.textAlignment = .center
        loginTextField.placeholder = "Email"
        loginTextField.layer.borderColor = UIColor.black.cgColor
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 20
        loginTextField.layer.borderWidth = 0.2
        loginTextField.layer.masksToBounds = true
        
        // MARK: - passworldField
        
        passworldTextField.layer.shadowColor = UIColor.black.cgColor
        passworldTextField.layer.shadowOpacity = 0.3
        passworldTextField.layer.shadowOffset = .zero
        passworldTextField.layer.shadowRadius = 10
        passworldTextField.layer.shouldRasterize = true
        passworldTextField.layer.rasterizationScale = UIScreen.main.scale
        passworldTextField.textColor = .gray
        passworldTextField.textAlignment = .center
        passworldTextField.placeholder = "Password"
        passworldTextField.layer.borderColor = UIColor.black.cgColor
        passworldTextField.clipsToBounds = true
        passworldTextField.layer.cornerRadius = 20
        passworldTextField.layer.borderWidth = 0.2
        passworldTextField.layer.masksToBounds = true
        
    }


}

