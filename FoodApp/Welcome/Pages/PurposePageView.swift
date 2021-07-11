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
            Text(Strings.welcome.localizedStringKey)
                .font(.largeTitle)
            Spacer()
                .frame(height: 40)
            Image("groceries")
            Spacer()
                .frame(height: 40)
            Text(Strings.welcomeText.localizedStringKey)
                .font(.footnote)
                .padding()
            Spacer()
                .frame(height: 20)
            Text(Strings.moreInfo)
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
            .environment(\.locale, .init(identifier: "en"))
    }
}
