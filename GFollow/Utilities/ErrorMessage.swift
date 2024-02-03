import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "The username created invalid request. Try again"
    case unableToComplete = "Unable to complete request."
    case invalidResponse = "Invalid response from server. Try again."
    case invalidData = "The data recieved from server is invalid. Try again"
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "This person is already your in your favorites 💚"
}
