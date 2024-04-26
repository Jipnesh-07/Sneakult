//
//  User.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct User {
    var name: String
    var id: UUID
    var email: String
    var isEmailVerified : Bool
    var location : String
    var CreatedAt : Data
    var UserName : String
    var Listings : [Listings]
    var post : [Post]
    var reviews : [Reviews]
    var Followers : [User]
    var Following : [User]
    var Orders : [Orders]
    var bids : [Bid]
    var payments : [Payments]
    
}
