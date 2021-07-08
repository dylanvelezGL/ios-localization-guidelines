//
//  Settings.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import Foundation

final class Settings {
    static let shared = Settings()
    
    var hasSeenWelcomeScreen: Bool = false
    var locale: SupportedLocale = .english
    
    private init() { loadSettings() }
    
    private func loadSettings() {
        hasSeenWelcomeScreen = UserDefaults.standard.bool(forKey: Keys.welcome)
        if let value =  UserDefaults.standard.string(forKey: Keys.locale) {
            locale = SupportedLocale.fromSetting(value: value)
        } else {
            locale = .english
        }
    }
    
    func saveSettings() {
        UserDefaults.standard.set(hasSeenWelcomeScreen, forKey: Keys.welcome)
        UserDefaults.standard.set(locale.localeString, forKey: Keys.locale)
    }
}

private extension Settings {
    enum Keys {
        static let welcome = "com.dylansvm.localization.settings.welcome"
        static let locale = "com.dylansvm.localization.settings.locale"
    }
}

fileprivate extension SupportedLocale {
    
    static func fromSetting(value: String) -> SupportedLocale {
        switch value {
        case "es":
            return .spanish
        case "ar":
            return .arabic
        default:
            return .english
        }
    }
}
