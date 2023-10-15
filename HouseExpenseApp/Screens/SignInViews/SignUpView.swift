//
//  SignUpview.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 05/10/2023.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            VStack(alignment: .center, spacing: 20) {
                SignUpName(viewModel: viewModel)
            }
            .padding(.horizontal, 20)
            .frame(width: 300, height: 550)
            .background(Color(uiColor: .systemGray6))
            .cornerRadius(20)
            .shadow(radius: 5)
            .tag("name")
            VStack(alignment: .center, spacing: 20) {
                SignUpEmail(viewModel: viewModel)
            }
            .padding(.horizontal, 20)
            .frame(width: 300, height: 550)
            .background(Color(uiColor: .systemGray6))
            .cornerRadius(20)
            .shadow(radius: 5)
            .tag("email")
            VStack(alignment: .center, spacing: 20) {
                SignUpPassword(viewModel: viewModel)
            }
            .padding(.horizontal, 20)
            .frame(width: 300, height: 550)
            .background(Color(uiColor: .systemGray6))
            .cornerRadius(20)
            .shadow(radius: 5)
            .tag("password")
        }
        .tabViewStyle(.page)
    }
    }
    

#Preview {
    SignUpView()
}
