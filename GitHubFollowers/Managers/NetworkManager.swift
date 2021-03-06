//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/21/20.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    let baseUrl = "https://api.github.com/users/"
    
    private init(){
        
    }
    
    func getFollowers(for username: String, page:Int, completed: @escaping (Result<[Follower],GFError>) -> Void)  {
        let endpoint = baseUrl + "\(username)/followers?per_page=\(page)"
        
        guard let url = URL(string: endpoint) else{
            completed(.failure(.invalidUsername))
            
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(.failure(.unableToComplete))
            }
            // Returns the repsonse as data and the status code or displays the error.
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                //Decoder takes data from server and converts it to usable objects, Encoder does the opposite
               let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
                
            }
        }
        
        task.resume()
    }
}
