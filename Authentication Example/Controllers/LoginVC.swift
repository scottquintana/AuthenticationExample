//
//  ViewController.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class LoginVC: UIViewController {
    
    let loginView = LoginView()
    let secureStore = SecureStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Login"
        loginView.delegate = self
        configureLoginView()
        
        checkForToken()
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
    
    private func signInUser(email: String, password: String) {
        NetworkManager.shared.loginUser(email: email, password: password) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let authInfo):
                let token = authInfo.token
                self.storeToken(token: token)
                
                let user = authInfo.user
                DispatchQueue.main.async {
                    self.navigationController?.pushViewController(WelcomeVC(user: user), animated: true)
                }
                
            case .failure(let error):
                print(error.rawValue)
            }
        }
    }
    
    
    private func storeToken(token: String) {
        do {
            try secureStore.set(entry: token, forKey: Keys.token)
        } catch {
            print("Could not store credentials securely")
        }
    }
    
    private func checkForToken() {
        guard let storedToken = try? secureStore.entry(forKey: Keys.token) else {
            print("No stored token")
            return
        }
    }

}

extension LoginVC: LoginViewDelegate {
    func didPressLogin(email: String, password: String) {
        signInUser(email: email, password: password)
    }
}

