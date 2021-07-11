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
        let appleLocaleValue = UserDefaults.standard.array(forKey: "AppleLanguages") as? [String]
        if let appleArray = appleLocaleValue, let appleValue = appleArray.compactMap({ SupportedLocale.fromSetting(value: $0)}).first {
            locale = appleValue
        } else {
            locale = .english
        }
    }
    
    func saveSettings() {
        UserDefaults.standard.set(hasSeenWelcomeScreen, forKey: Keys.welcome)
        UserDefaults.standard.set([locale.localeString], forKey: "AppleLanguages")
    }
}

private extension Settings {
    enum Keys {
        static let welcome = "com.dylansvm.localization.settings.welcome"
        static let locale = "com.dylansvm.localization.settings.locale"
    }
}

fileprivate extension SupportedLocale {
    
    static func fromSetting(value: String) -> SupportedLocale? {
        switch value {
        case "es":
            return .spanish
        case "ar":
            return .arabic
        case "en":
            return .english
        default:
            return nil
        }
    }
}
