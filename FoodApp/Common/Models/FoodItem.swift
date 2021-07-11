//
//  FoodItem.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import Foundation

struct FoodItem: Identifiable{
    typealias Price = Float
    
    let id: UUID = UUID()
    let name: String
    let description: String
    let imageName: String
    let price: Price
}

let foodItems = [
    FoodItem(name: Localized.Food.pizza,
             description: Localized.Food.pizzaDescription,
             imageName: "pizza",
             price: 10),
    FoodItem(name: Localized.Food.hamburger,
             description: Localized.Food.hamburgerDescription,
             imageName: "hamburger",
             price: 6.99),
    FoodItem(name: Localized.Food.sandwich,
             description: Localized.Food.sandwichDescription,
             imageName: "sandwich",
             price: 8.20),
    FoodItem(name: Localized.Food.salad,
             description: Localized.Food.saladDescription,
             imageName: "salad",
             price: 15)
]
