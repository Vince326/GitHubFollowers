//
//  Users.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/21/20.
//

import Foundation

struct Users: Codable {
    
    var login: String
    var avatarUrl: String
    var name: String?
    var bio: String?
    var location: String?
    var followers: Int
    var following: Int
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var createdAt: String
    
    
}
