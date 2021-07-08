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
            FoodListView()
                .tabItem {
                    Text("List")
                }
            SettingsView()
                .tabItem {
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
