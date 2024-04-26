//
//  Sneaker.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation
struct Sneaker {
    var productId : UUID
    var productName : String
    var brand : String
    var Category : String
    var Size : String
    var color : String
    var isBoxAvailable : Bool
    var laces : [Laces]
}
