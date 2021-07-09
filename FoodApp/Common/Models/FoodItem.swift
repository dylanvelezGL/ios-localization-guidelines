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
    FoodItem(name: "Pizza",
             description: "Delicious pepperoni pizza with extra cheese and secret italian spices",
             imageName: "pizza",
             prices: [.small: 10, .medium: 16.8, .large: 23 ]),
    FoodItem(name: "Hamburguer",
             description: "American style hamburguer with double cheese and 250gr mixed meat",
             imageName: "hamburger",
             prices: [.small: 3, .medium: 5, .large: 7]),
    FoodItem(name: "Sandwich",
             description: "Yummy large sandwich with a mix of vegetables and cheese",
             imageName: "sandwich",
             prices: [.medium: 8]),
    FoodItem(name: "Salad",
             description: "Healthiest and biggest salad you can find without forgetting all the flavor",
             imageName: "salad",
             prices: [.large: 10]),
    FoodItem(name: "Soup",
             description: "Best Minestrone soup in the world",
             imageName: "soup",
             prices: [.medium: 10])
]
