//
//  ViewController.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class LoginVC: UIViewController {
    
    let loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        configureLoginView()
    }

    private func configureLoginView() {
        view.addSubview(loginView)
        
        loginView.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.widthAnchor.constraint(equalToConstant: (view.frame.width - 50)),
            loginView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

}

