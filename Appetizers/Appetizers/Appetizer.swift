//
//  Appetizer.swift
//  Appetizers
//
//  Created by Pedro Boga on 31/08/22.
//

import Foundation

struct AppetizerResponse {
    let request: [Appetizer]
}

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1, name: "Burguer", description: "Really good vegetarian burger", price: 11.99, imageURL: "", protein: 1, calories: 100, carbs: 4)
    
    static let appetizer = [sampleAppetizer]
}
