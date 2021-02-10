//
//  WelcomeVC.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/10/21.
//

import UIKit

class WelcomeVC: UIViewController {
    
    let welcomeLabel = UILabel()
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        configureUI()
    }
    
    convenience init(user: User){
        self.init()
        self.user = user
    }
    
    private func configureUI() {
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.text = "Welcome \(user.name)!"
        
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
        
    }

}
