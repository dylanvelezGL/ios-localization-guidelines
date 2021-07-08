//
//  FoodItem.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import Foundation

struct FoodItem: Identifiable{
    typealias Price = Float
    enum Size {
        case small
        case medium
        case large
    }
    
    let id: UUID = UUID()
    let name: String
    let description: String
    let imageName: String
    let prices: [Size: Price]
}

let foodItems = [
    FoodItem(name: "Pizza", description: "", imageName: "", prices: [:]),
    FoodItem(name: "Hamburguer", description: "", imageName: "", prices: [:]),
    FoodItem(name: "Sandwich", description: "", imageName: "", prices: [:]),
    FoodItem(name: "Salad", description: "", imageName: "", prices: [:]),
    FoodItem(name: "Soup", description: "", imageName: "", prices: [:])
]
