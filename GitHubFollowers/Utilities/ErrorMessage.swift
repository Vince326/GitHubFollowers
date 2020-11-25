//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/22/20.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request, please try again"
    case unableToComplete = "Unable to complete your request, please check your internet"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data recieved from the server was invalid. Please try again"
    
}
