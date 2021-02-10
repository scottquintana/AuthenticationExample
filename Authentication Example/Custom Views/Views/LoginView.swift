//
//  LoginView.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

protocol LoginViewDelegate: class {
    func didPressLogin(email: String, password: String)
}
class LoginView: UIView {

    let emailInput = AETextField()
    let passwordInput = AETextField()
    let loginButton = AEButton(title: "Login", backgroundColor: .black)
    
    weak var delegate: LoginViewDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cyan
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLayout() {
        addSubview(emailInput)
        addSubview(passwordInput)
        addSubview(loginButton)
        
        emailInput.placeholder = "Email"
        emailInput.autocorrectionType = .no
        emailInput.autocapitalizationType = .none
        
        passwordInput.placeholder = "Password"
        passwordInput.isSecureTextEntry = true
        translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
        
        let padding: CGFloat = 30
        NSLayoutConstraint.activate([
            emailInput.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            emailInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            emailInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            emailInput.heightAnchor.constraint(equalToConstant: 32),
            
            passwordInput.topAnchor.constraint(equalTo: emailInput.bottomAnchor, constant: padding),
            passwordInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            passwordInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            passwordInput.heightAnchor.constraint(equalToConstant: 32),
            
            loginButton.topAnchor.constraint(equalTo: passwordInput.bottomAnchor, constant: padding),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 32),
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    @objc private func loginPressed() {
        guard let email = emailInput.text else { return }
        guard let password = passwordInput.text else { return }
        
        delegate.didPressLogin(email: email, password: password)
    }
}
