//
//  FoodList.swift
//  FoodApp
//
//  Created by Dylan Vélez on 8/07/21.
//

import SwiftUI

struct FoodListView: View {
    @State private var items: [FoodItem] = foodItems
    var body: some View {
        VStack {
            Text("Food App")
            List(items) { item in
                FoodListItemView(item: item)
            }
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
