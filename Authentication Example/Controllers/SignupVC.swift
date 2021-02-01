//
//  SignupVC.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class SignupVC: UIViewController {
    
    let signupView = SignupView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureSignupView()
    }

    private func configureSignupView() {
        view.addSubview(signupView)
        
        signupView.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            signupView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            signupView.widthAnchor.constraint(equalToConstant: (view.frame.width - 50)),
            signupView.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
}
