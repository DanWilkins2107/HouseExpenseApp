//
//  AddShoppingItemView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 11/10/2023.
//

import SwiftUI 

struct AddShoppingItemView: View {
    @State private var itemName = ""
    @State private var itemQuantity = ""
    @State private var itemDescription = ""
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("Add Shopping List Item")
//                RegularTextField(text: "Enter Item", variableToModify: $itemName, isEmail: false)
                Spacer()
//                RegularTextField(text: "Enter Quantity", variableToModify: $itemQuantity, isEmail: false)
                Spacer()
//                RegularTextField(text: "Enter Description", variableToModify: $itemDescription, isEmail: false)
                Spacer()
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Add Item")
                }
            }
            .frame(width: 200, height: 300)
            .background(.white.gradient)
        }
    }
}

#Preview {
    AddShoppingItemView()
}
