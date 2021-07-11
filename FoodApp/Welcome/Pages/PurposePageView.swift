//
//  PurposePageView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct PurposePageView: View {
    
    var blogText: AttributedString {
        var attributedString = Strings.moreInfo
        let hereRange = attributedString.range(of: Strings.here)!
        let pageRange = attributedString.range(of: Strings.page)!
        attributedString[hereRange].link = URL(string: Strings.blogLink)
        attributedString[pageRange].link = URL(string: Strings.githubLink)
        return attributedString
    }
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 40)
            Text(Strings.welcome)
                .font(.largeTitle)
            Spacer()
                .frame(height: 40)
            Image("groceries")
            Spacer()
                .frame(height: 40)
            Text(Strings.welcomeText)
                .font(.footnote)
                .padding()
            Spacer()
                .frame(height: 20)
            Text(blogText)
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
            .environment(\.locale, .init(identifier: "es"))
    }
}
