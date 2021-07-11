//
//  ContentView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FoodListView(items: foodItems)
                    .navigationBarTitle(Strings.foodApp)
            }
            .tabItem {
                Label(Strings.food, systemImage: "list.dash")
            }
            
            NavigationView {
                SettingsView()
                    .navigationBarTitle(Strings.settings)
                    .onDisappear {
                        Settings.shared.saveSettings()
                    }
            }
            .tabItem {
                Label(Strings.settings, systemImage: "gearshape.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
