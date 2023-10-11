//
//  HouseHomePageView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 11/10/2023.
//

import SwiftUI

struct UserHouseholdView: View {
    var household: Household
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text(household.householdName)
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .blue, backgroundColor: .white, text: "Add Expense")
                }
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .blue, backgroundColor: .white, text: "View/Edit Shopping List")
                }
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .blue, backgroundColor: .white, text: "View Expense Table")
                }
                Button {
                    
                } label: {
                    MaxWidthButtonLabel(foregroundColor: .blue, backgroundColor: .white, text: "View Expense History")
                }
            }
        }
    }
}

#Preview {
    UserHouseholdView(household: MockData.house1)
}
