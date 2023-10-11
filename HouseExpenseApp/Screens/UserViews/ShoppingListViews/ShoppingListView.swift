//
//  ShoppingListView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 11/10/2023.
//

import SwiftUI

struct ShoppingListView: View {
    var household: Household
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("Shopping List")
                ForEach(household.shoppingList, id: \.self) { item in
                    VStack {
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.totalNeeded)")
                            Icon(imageName: "square.and.pencil")
                        }
                        Text(item.description)
                    }
                }
            }
        }
    }
}

#Preview {
    ShoppingListView(household: MockData.house1)
}
