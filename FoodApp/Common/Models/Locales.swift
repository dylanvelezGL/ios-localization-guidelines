//
//  Locales.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import Foundation

protocol LocaleRepresentable {
    var localeString: String { get}
}

enum SupportedLocale: LocaleRepresentable {
    case english
    case spanish
    case arabic
    
    //TODO: Get the correct locale string
    var localeString: String {
        switch self {
        case .english:
            return "en"
        case .spanish:
            return "es"
        case .arabic:
            return "ar"
        }
    }
}
