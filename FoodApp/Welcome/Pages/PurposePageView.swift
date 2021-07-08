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
            Text("Welcome to FoodApp")
            Image(systemName: "mail")
            Text("This app was made with the purpose of teaching some localization strategies")
            Text("If you want to know more please look for the blog post here")
        }
    }
}

struct PurposePageView_Previews: PreviewProvider {
    static var previews: some View {
        PurposePageView()
    }
}
