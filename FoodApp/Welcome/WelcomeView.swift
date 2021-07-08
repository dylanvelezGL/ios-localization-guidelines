//
//  WelcomeView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        TabView {
            PurposePageView()
            ChangeLocalePageView()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .onDisappear {
            Settings.shared.hasSeenWelcomeScreen = true
            Settings.shared.saveSettings()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
