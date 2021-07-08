//
//  ChangeLocalePageView.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct ChangeLocalePageView: View {
    var body: some View {
        VStack {
            Text("Internationalization")
            Image(systemName: "square")
            Text("This app supports english, spanish and arabic")
            Text("It also changes the UI based on RTL or LTR languages")
            Text("In fact, you can change it right here or in the settings")
            SettingsRadioGroupView()
        }
    }
}

struct ChangeLocalePageView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLocalePageView()
    }
}
