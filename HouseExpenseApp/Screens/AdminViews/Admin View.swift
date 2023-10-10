//
//  Admin View.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 05/10/2023.
//

import SwiftUI

struct AdminView: View {
    var household: Household
    @State var usersIsExpanded = false
    @State var itemsIsExpanded = false
    @State var expenseHistoryIsExpanded = false
    var body: some View {
        let noOfMemberString = (household.noOfMembers == 1) ? "1 Member" : "\(household.noOfMembers) Members"
        ZStack {
            BackgroundView()
            VStack {
                HeaderView(isLoggedIn: false)
                Text("Edit Household")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding()
                ScrollView {
                    HStack {
                        Text(household.householdName)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(noOfMemberString)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white.opacity(0.7))
                        VStack {
                            Text("Joining Code:")
                                .font(.title)
                                .fontWeight(.bold)
                            let digits = Array(household.joiningCode)
                            HStack {
                                ForEach(digits, id: \.self) { digit in
                                    ZStack {
                                        Rectangle()
                                            .fill(.blue.gradient)
                                            .frame(width: 50, height: 60)
                                            .cornerRadius(5)
                                        Text(String(digit))
                                            .font(.title)
                                            .fontWeight(.semibold)
                                    }
                                }
                            }
                            Button {
                                
                            } label: {
                                Text("Change Code")
                                    .font(.title2)
                                    .frame(width: 280, height: 50)
                                    .background(.white.gradient)
                                    .cornerRadius(5)
                            }
                        }
                    }
                    .frame(height: 250)
                    .cornerRadius(20)
                    .padding()
                    Button {
                        usersIsExpanded = true
                    } label: {
                        MaxWidthButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Edit Users")
                    }
                    .padding()
                    Button {
                        itemsIsExpanded = true
                    } label: {
                        MaxWidthButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Edit Items")
                    }
                    .padding()
                    Button {
                        expenseHistoryIsExpanded = true
                    } label: {
                        MaxWidthButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "View Expense History")
                    }
                    .padding()
                }
                .padding()
            }
        }
        .sheet(isPresented: $itemsIsExpanded) {
            EditItemsAdminView()
        }
        .sheet(isPresented: $usersIsExpanded) {
            EditUsersAdminView()
        }
        .sheet(isPresented: $expenseHistoryIsExpanded) {
            ViewExpensesAdminView(household: household)
        }
    }
}

#Preview {
    AdminView(household: MockData.house1)
}
