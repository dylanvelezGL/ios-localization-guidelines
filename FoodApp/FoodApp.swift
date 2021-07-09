//
//  FoodAppApp.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

@main
struct FoodApp: App {
    @State private var shouldShowWelcomeScreen = !Settings.shared.hasSeenWelcomeScreen
    var body: some Scene {
        WindowGroup {
            ContentView()
                .sheet(isPresented: $shouldShowWelcomeScreen) {
                    WelcomeView()
                }
                .onAppear {
                    shouldShowWelcomeScreen = !Settings.shared.hasSeenWelcomeScreen
                }
        }
    }
}
