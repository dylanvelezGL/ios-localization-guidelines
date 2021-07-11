//
//  LocalizedStrings.swift
//  FoodApp
//
//  Created by Dylan Vélez on 11/07/21.
//

import Foundation

struct Localization {
    struct Settings {
        static let welcomeScreen = String(localized: "Welcome Screen", comment: "Title of the welcome screen section in settings")
        static let showWelcomeScreen = String(localized: "Show Welcome Screen", comment: "Toggable option to show or not show the welcome screen")
        static let internationalization = String(localized: "Internationalization", comment: "Title of the internationalization section in settings")
        static let language = String(localized: "Language", comment: "Title of the language picker in settings")
        static let english = String(localized: "English", comment: "English language option")
        static let espanol = String(localized: "Spanish", comment: "Spanish language option")
        static let arabic = String(localized: "Arabic", comment: "Arabic language option")
    }
    
    struct Food {
        static let pizza = String(localized: "Pizza")
        static let pizzaDescription = String(localized: "Delicious pepperoni pizza with extra cheese and secret italian spices", comment: "Pizza description")
        static let hamburger = String(localized: "Hamburguer")
        static let hamburgerDescription = String(localized: "American style hamburguer with double cheese and 250gr mixed meat", comment: "Hamburger description")
        static let sandwich = String(localized: "Sandwich")
        static let sandwichDescription = String(localized: "Yummy large sandwich with a mix of vegetables and cheese", comment: "Sandwich description")
        static let salad = String(localized: "Salad")
        static let saladDescription = String(localized: "Healthiest and biggest salad you can find without forgetting all the flavor", comment: "Salad description")
    }
    
    struct Welcome {
        static let moreInfo = AttributedString(localized: "For more info please visit the blog post [here](https://gorillalogic.com/blog/) or visit the github [page](https://github.com/DylanVelezCode/ios-localization-guidelines)", comment: "Text with links to know more about the project")
        static let welcome = String(localized: "Welcome to FoodApp", comment: "Title of the welcome screen")
        static let welcomeText = String(localized: "This app was made with the purpose of teaching some localization strategies. \nIt includes localization for English, Spanish and Arabic and you can switch between the locales at any time in the settings screen.", comment: "Purpose of the app")
    }
    
    struct App {
        static let foodApp = String(localized: "Food App", comment: "Title of the app in the navigation")
        static let food = String(localized: "Food", comment: "Tab bar item")
        static let settings = String(localized: "Settings", comment: "Tab bar item")
    }
    
    struct FoodList {
        static let availableRecipes = String(localized: "There are %ld recipes available", comment: "Pluralized number of recipes available")
    }
}
