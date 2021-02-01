//
//  SignupView.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class SignupView: UIView {
    
    let nameLabel = AEInputLabel()
    let nameInput = AETextField()
    let emailLabel = AEInputLabel()
    let emailInput = AETextField()
    let emailValidationLabel = AEInputLabel()
    let passwordLabel = AEInputLabel()
    let passwordInput = AETextField()
    let passwordAgainLabel = AEInputLabel()
    let passwordAgainInput = AETextField()
    let passwordValidationLabel = AEInputLabel()
    
    let signupButton = AEButton(title: "Signup!", backgroundColor: .black)

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLayout() {
        addSubviews(nameLabel, nameInput, emailLabel, emailInput, emailValidationLabel, passwordLabel, passwordInput, passwordAgainLabel, passwordAgainInput, passwordValidationLabel, signupButton)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.text = "Name:"
        emailLabel.text = "Email:"
        emailValidationLabel.text = "Email address is already taken"
        emailValidationLabel.textColor = .red
        passwordLabel.text = "Password:"
        passwordAgainLabel.text = "Confirm password"
        passwordValidationLabel.text = "Passwords do not match"
        passwordValidationLabel.textColor = .red
        
        emailInput.autocorrectionType = .no
        emailInput.autocapitalizationType = .none
        passwordInput.isSecureTextEntry = true
        passwordAgainInput.isSecureTextEntry = true
        
        let padding: CGFloat = 20
        let labelHeight: CGFloat = 16
        let inputHeight: CGFloat = 32
        let labelToInputSpacing: CGFloat = 3
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            nameLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            nameInput.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: labelToInputSpacing),
            nameInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            nameInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            nameInput.heightAnchor.constraint(equalToConstant: inputHeight),
            
            emailLabel.topAnchor.constraint(equalTo: nameInput.bottomAnchor, constant: padding),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            emailLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            emailInput.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: labelToInputSpacing),
            emailInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            emailInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            emailInput.heightAnchor.constraint(equalToConstant: inputHeight),
            
            emailValidationLabel.topAnchor.constraint(equalTo: emailInput.bottomAnchor, constant: labelToInputSpacing),
            emailValidationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            emailValidationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            emailValidationLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            passwordLabel.topAnchor.constraint(equalTo: emailInput.bottomAnchor, constant: padding),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordLabel.heightAnchor.constraint(equalToConstant: inputHeight),
            
            passwordInput.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: labelToInputSpacing),
            passwordInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordInput.heightAnchor.constraint(equalToConstant: inputHeight),
            
            passwordAgainLabel.topAnchor.constraint(equalTo: passwordInput.bottomAnchor, constant: padding),
            passwordAgainLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordAgainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordAgainLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            passwordAgainInput.topAnchor.constraint(equalTo: passwordAgainLabel.bottomAnchor, constant: labelToInputSpacing),
            passwordAgainInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordAgainInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordAgainInput.heightAnchor.constraint(equalToConstant: inputHeight),
            
            passwordValidationLabel.topAnchor.constraint(equalTo: passwordAgainInput.bottomAnchor, constant: labelToInputSpacing),
            passwordValidationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordValidationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordValidationLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
//            signupButton.topAnchor.constraint(equalTo: passwordAgainInput.bottomAnchor, constant: padding),
            signupButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding),
            signupButton.widthAnchor.constraint(equalToConstant: 100),
            signupButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signupButton.heightAnchor.constraint(equalToConstant: 32)
            
            
        ])
    
    }
}
