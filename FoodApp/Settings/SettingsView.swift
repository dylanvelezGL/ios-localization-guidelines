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
            Section("Welcome Screen") {
                Toggle("Show Welcome Screen", isOn: welcomeScreenBinding)
                    .padding()
            }
            
            Section("Internationalization") {
                Picker("Language", selection: localeBinding) {
                    Text("English").tag(SupportedLocale.english)
                    Text("Español").tag(SupportedLocale.spanish)
                    Text("Arabic").tag(SupportedLocale.arabic)
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
