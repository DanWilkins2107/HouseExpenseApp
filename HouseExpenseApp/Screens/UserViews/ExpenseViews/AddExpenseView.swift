//
//  AddExpenseView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 11/10/2023.
//

import SwiftUI

struct AddExpenseView: View {
    @State private var itemName = ""
    @State private var itemCategory = ""
    @State private var itemPrice = ""
    @State private var itemDescription = ""
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("New Expense")
                RegularTextField(text: "Enter Item", variableToModify: $itemName, isEmail: false)
                Spacer()
                RegularTextField(text: "Enter Category", variableToModify: $itemCategory, isEmail: false)
                Spacer()
                RegularTextField(text: "Enter Price", variableToModify: $itemPrice, isEmail: false)
                Spacer()
                RegularTextField(text: "Enter Description", variableToModify: $itemPrice, isEmail: false)
                Spacer()
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Add Expense")
                }
            }
            .frame(width: 200, height: 300)
            .background(.white.gradient)
        }
    }
}

#Preview {
    AddExpenseView()
}
