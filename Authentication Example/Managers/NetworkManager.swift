//
//  NetworkManager.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/2/21.
//

import Foundation

struct NetworkManager {
    
    static let shared = NetworkManager()
    
    init() {}
    
    let baseURL = "https://quintana-task-manager.herokuapp.com"
    
    func loginUser(email: String, password: String, completed: @escaping (Result<Login, AEError>) -> Void) {
        let params = ["email":email, "password":password]
        let paramsJSON = try? JSONSerialization.data(withJSONObject: params)
        
        guard let url = URL(string: baseURL + "/users/login") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = paramsJSON
       
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let result = try decoder.decode(Login.self, from: data)
                completed(.success(result))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
