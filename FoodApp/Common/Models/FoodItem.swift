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
    FoodItem(name: "Pizza",
             description: "Delicious pepperoni pizza with extra cheese and secret italian spices",
             imageName: "pizza",
             price: 10),
    FoodItem(name: "Hamburguer",
             description: "American style hamburguer with double cheese and 250gr mixed meat",
             imageName: "hamburger",
             price: 6.99),
    FoodItem(name: "Sandwich",
             description: "Yummy large sandwich with a mix of vegetables and cheese",
             imageName: "sandwich",
             price: 8.20),
    FoodItem(name: "Salad",
             description: "Healthiest and biggest salad you can find without forgetting all the flavor",
             imageName: "salad",
             price: 15)
]
