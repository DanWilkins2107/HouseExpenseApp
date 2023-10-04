//  ContentView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            HeaderView()
            Text("Hi Dan")
            Button {
                
            } label: {
                Text("Create Household")
            }
            Button {
                
            } label: {
                Text("Join Household")
            }
            
        }
    }
}

#Preview {
    DashboardView()
}
