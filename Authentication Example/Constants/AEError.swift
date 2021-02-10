//
//  AEError.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/4/21.
//

import Foundation

enum AEError: String, Error {
    case invalidUsername = "This username created an invalid response. Please check your internet connection."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user."
}
