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
                    .navigationBarTitle("Food App")
            }
            .tabItem {
                Label("Food", systemImage: "list.dash")
            }
            
            NavigationView {
                SettingsView()
                    .navigationBarTitle("Settings")
                    .onDisappear {
                        Settings.shared.saveSettings()
                    }
            }
            .tabItem {
                Label("Settings", systemImage: "gearshape.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
