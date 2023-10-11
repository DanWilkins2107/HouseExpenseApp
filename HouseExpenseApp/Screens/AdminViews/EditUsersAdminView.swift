//
//  Sheet.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 07/10/2023.
//

import SwiftUI

struct EditUsersAdminView: View {
    var household: Household
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("Edit Users")
                    .font(.title)
                    .fontWeight(.bold)
                ForEach(household.userIDs, id: \.self) { user in
                    HStack {
                        Text(user)
                            .padding()
                        Spacer()
                        Image(systemName: "eye")
                            .padding()
                        Image(systemName: "trash")
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 5)
                    .background(.white.gradient)
                    .padding()
                }
            Spacer()
            }
        }
    }
}

#Preview {
    EditUsersAdminView(household: MockData.house1)
}
