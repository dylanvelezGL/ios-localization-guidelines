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
                Text(item.name.localizedStringKey)
                    .font(.headline)
                Text(item.description.localizedStringKey)
                    .lineLimit(3)
                    .font(.caption)
                Text(NumberFormatter.localizedString(from: NSNumber(value: item.price), number: .currency))
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(Strings.quantityLeft(item.quantityLeft))
                    .lineLimit(3)
                    .font(.caption)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct FoodListItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodListItemView(item: FoodItem(name: Localization.Food.pizza,
                                        description: Localization.Food.pizzaDescription,
                                        imageName: "pizza",
                                        price: 10,
                                       quantityLeft: 0))
            .environment(\.locale, .init(identifier: "en"))
    }
}
