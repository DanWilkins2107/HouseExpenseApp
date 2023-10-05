//  ContentView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import SwiftUI

struct HouseView: View {
    var household: Household
    
   
    var body: some View {
        let noOfMembersString = (household.noOfMembers == 1) ?
        "1 Member" : "\(household.noOfMembers) Members"
        return ZStack {
            Rectangle()
                .frame(width: .infinity, height: 100)
                .foregroundColor(.white.opacity(0.8))
                .cornerRadius(5)
            HStack {
                VStack {
                    Text(household.householdName)
                        .font(.title2)
                    Spacer()
                    Text(noOfMembersString)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            .padding()
        }
    }
}

struct DashboardView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HeaderView(isLoggedIn: true)
                Text("Hi Dan")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                Button {
                    
                } label: {
                    Text("Create Household")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue.gradient)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Button {
                    
                } label: {
                    Text("Join Household")
                        .foregroundColor(.blue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.white.gradient)
                        .cornerRadius(10)
                }
                .padding()
                ZStack {
                    Color.white.opacity(0.4)
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], content: {
                            ForEach(MockData.householdArray) { household in
                                HouseView(household: household)
                            }
                        })
                    }
                    .padding()
                }
                .cornerRadius(10)
                .padding()
                
            }
        }
    }
}

#Preview {
    DashboardView()
}
