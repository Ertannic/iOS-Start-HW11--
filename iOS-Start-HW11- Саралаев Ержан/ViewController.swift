//
//  ViewController.swift
//  iOS-Start-HW11- Саралаев Ержан
//
//  Created by Ertannic Saralay on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        
        // MARK: - loginLabel
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
        label.numberOfLines = 5
        label.textAlignment = .center
        
        
        // MARK: - loginField
        loginTextField.layer.shadowColor = UIColor.black.cgColor
        loginTextField.layer.shadowOpacity = 0.3
        loginTextField.layer.shadowOffset = .zero
        loginTextField.layer.shadowRadius = 10
        loginTextField.layer.shouldRasterize = true
        loginTextField.layer.rasterizationScale = UIScreen.main.scale
        loginTextField.textColor = .gray
        let firstLeftSpacerView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: loginTextField.frame.height))
        loginTextField.leftView = firstLeftSpacerView
        loginTextField.leftViewMode = .always
        loginTextField.textAlignment = .left
        loginTextField.placeholder = "Email"
        loginTextField.layer.borderColor = UIColor.black.cgColor
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 20
        loginTextField.layer.borderWidth = 0.2
        loginTextField.layer.masksToBounds = true
        loginTextField.setupLeftSideImage(ImageViewNamed: "emailImage")

        // MARK: - passworldField
        passworldTextField.layer.shadowColor = UIColor.black.cgColor
        passworldTextField.layer.shadowOpacity = 0.3
        passworldTextField.layer.shadowOffset = .zero
        passworldTextField.layer.shadowRadius = 10
        passworldTextField.layer.shouldRasterize = true
        passworldTextField.layer.rasterizationScale = UIScreen.main.scale
        passworldTextField.textColor = .gray
        let leftSpacerView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: passworldTextField.frame.height))
        passworldTextField.leftView = leftSpacerView
        passworldTextField.leftViewMode = .always
        passworldTextField.textAlignment = .left
        passworldTextField.placeholder = "Password"
        passworldTextField.layer.borderColor = UIColor.black.cgColor
        passworldTextField.clipsToBounds = true
        passworldTextField.layer.cornerRadius = 20
        passworldTextField.layer.borderWidth = 0.2
        passworldTextField.layer.masksToBounds = true
        passworldTextField.isSecureTextEntry = true
        passworldTextField.setupLeftSideImage(ImageViewNamed: "passwordImage")
        
        //MARK: - UIButton
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.backgroundColor = .systemIndigo
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
    }
}

// MARK: - Extensions

extension UITextField {
    
    func setupLeftSideImage(ImageViewNamed:String){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        imageView.image = UIImage(named: ImageViewNamed)
        let imageViewContainerView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
        self.tintColor = .lightGray
    }
}
