//
//  FoodListItem.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct FoodListItemView: View {
    let item: FoodItem
    var body: some View {
        HStack {
            Image("")
            VStack {
                Text("Title of the item")
                Text("Description of the item")
                HStack {
                    Text("Sizes of the item")
                    Text("Price of the item")
                }
            }
        }
    }
}

struct FoodListItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodListItemView(item: FoodItem(name: "",
                                        description: "",
                                        imageName: "",
                                        prices: [:]))
    }
}
