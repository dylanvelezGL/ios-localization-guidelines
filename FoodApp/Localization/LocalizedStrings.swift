//
//  LocalizedStrings.swift
//  FoodApp
//
//  Created by Dylan Vélez on 11/07/21.
//

import Foundation

struct Localization {
    struct Settings {
        static let welcomeScreen = String(localized: "Welcome Screen")
        static let showWelcomeScreen = String(localized: "Show Welcome Screen")
        static let internationalization = String(localized: "Internationalization")
        static let language = String(localized: "Language")
        static let english = String(localized: "English")
        static let espanol = String(localized: "Español")
        static let arabic = String(localized: "Arabic")
    }
    
    struct Food {
        static let pizza = String(localized: "Pizza")
        static let pizzaDescription = String(localized: "Delicious pepperoni pizza with extra cheese and secret italian spices")
        static let hamburger = String(localized: "Hamburguer")
        static let hamburgerDescription = String(localized: "American style hamburguer with double cheese and 250gr mixed meat")
        static let sandwich = String(localized: "Sandwich")
        static let sandwichDescription = String(localized: "Yummy large sandwich with a mix of vegetables and cheese")
        static let salad = String(localized: "Salad")
        static let saladDescription = String(localized: "Healthiest and biggest salad you can find without forgetting all the flavor")
    }
    
    struct Welcome {
        static let moreInfo = AttributedString(localized: "For more info please visit the blog post here or visit the github page")
        static let here = String(localized: "here")
        static let page = String(localized: "page")
        static let blogLink = String(localized: "https://gorillalogic.com/blog/")
        static let githubLink = String(localized: "https://github.com/DylanVelezCode/ios-localization-guidelines")
        static let welcome = String(localized: "Welcome to FoodApp")
        static let welcomeText = String(localized: "This app was made with the purpose of teaching some localization strategies. \nIt includes localization for English, Spanish and Arabic and you can switch between the locales at any time in the settings screen.")
    }
    
    struct App {
        static let foodApp = String(localized: "Food App")
        static let food = String(localized: "Food")
        static let settings = String(localized: "Settings")
    }
}
