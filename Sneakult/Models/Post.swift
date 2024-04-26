//
//  Post.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Post {
    var user  : [User]
    var time : Date
    var image : [String]
    var caption : String
    var likes : Int
    var comments : [Comments]
    var share : URL
    var isBookmark : Bool
}
