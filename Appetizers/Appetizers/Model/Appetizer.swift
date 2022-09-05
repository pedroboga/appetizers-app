//
//  Appetizer.swift
//  Appetizers
//
//  Created by Pedro Boga on 31/08/22.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable {
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
    static let sampleAppetizer1 = Appetizer(id: 2, name: "Burguer 1", description: "Really good vegetarian burger", price: 11.99, imageURL: "", protein: 1, calories: 100, carbs: 4)
    static let sampleAppetizer2 = Appetizer(id: 3, name: "Burguer 2", description: "Really good vegetarian burger", price: 11.99, imageURL: "", protein: 1, calories: 100, carbs: 4)
    
    static let appetizer = [sampleAppetizer, sampleAppetizer1, sampleAppetizer2]
}
