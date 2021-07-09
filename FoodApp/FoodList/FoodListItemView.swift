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
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(12)
            VStack(alignment: .leading, spacing: 2) {
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .lineLimit(3)
                    .font(.caption)
                Text("Price: \(item.price)")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct FoodListItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodListItemView(item: FoodItem(name: "Pizza",
                                        description: "Delicious pepperoni pizza with extra cheese and secret italian spices",
                                        imageName: "pizza",
                                        price: 10))
    }
}
