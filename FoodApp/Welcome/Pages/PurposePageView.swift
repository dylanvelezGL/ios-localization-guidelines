//
//  PurposePageView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct PurposePageView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 40)
            Text("Welcome to FoodApp")
                .font(.largeTitle)
            Spacer()
                .frame(height: 40)
            Image("groceries")
            Spacer()
                .frame(height: 40)
            Text("This app was made with the purpose of teaching some localization strategies. \nIt includes localization for English, Spanish and Arabic and you can switch between the locales at any time in the settings screen.")
                .font(.footnote)
                .padding()
            Spacer()
                .frame(height: 20)
            Text("For more info please visit this blog post here")
                .font(.headline)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PurposePageView_Previews: PreviewProvider {
    static var previews: some View {
        PurposePageView()
    }
}
