//
//  SettingsView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var showWelcomeScreen = !Settings.shared.hasSeenWelcomeScreen
    @State private var selectedLocale = Settings.shared.locale
    
    var body: some View {
        let welcomeScreenBinding = Binding<Bool>(get: {
              self.showWelcomeScreen
          }, set: {
              self.showWelcomeScreen = $0
              Settings.shared.hasSeenWelcomeScreen = !$0
              Settings.shared.saveSettings()
          })
        
        let localeBinding = Binding<SupportedLocale>(get: {
              self.selectedLocale
          }, set: {
              self.selectedLocale = $0
              Settings.shared.locale = $0
              Settings.shared.saveSettings()
          })
        
        List {
            Section(Strings.welcomeScreen) {
                Toggle(Strings.showWelcomeScreen, isOn: welcomeScreenBinding)
                    .padding()
            }
            
            Section(Strings.internationalization) {
                Picker(Strings.language, selection: localeBinding) {
                    Text(Strings.english).tag(SupportedLocale.english)
                    Text(Strings.espanol).tag(SupportedLocale.spanish)
                    Text(Strings.arabic).tag(SupportedLocale.arabic)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
