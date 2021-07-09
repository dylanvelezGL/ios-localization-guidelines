//
//  FoodList.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct FoodListView: View {
    var items: [FoodItem]
    var body: some View {
        List(items) { item in
            FoodListItemView(item: item)
                .padding()
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView(items: foodItems)
    }
}
