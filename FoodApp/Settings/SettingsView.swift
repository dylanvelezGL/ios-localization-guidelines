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
            Section(Strings.welcomeScreen.localizedStringKey) {
                Toggle(Strings.showWelcomeScreen.localizedStringKey, isOn: welcomeScreenBinding)
                    .padding()
            }
            
            Section(Strings.internationalization.localizedStringKey) {
                Picker(Strings.language.localizedStringKey, selection: localeBinding) {
                    Text(Strings.english.localizedStringKey).tag(SupportedLocale.english)
                    Text(Strings.espanol.localizedStringKey).tag(SupportedLocale.spanish)
                    Text(Strings.arabic.localizedStringKey).tag(SupportedLocale.arabic)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
