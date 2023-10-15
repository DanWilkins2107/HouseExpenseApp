//
//  SignUpEmail.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 13/10/2023.
//

import SwiftUI

struct SignUpEmail: View {
    @ObservedObject var viewModel: SignUpViewModel
    var body: some View {
        ZStack {
            HeaderView(isLoggedIn: false)
            HStack {
                ArrowIcon(functionToRun: viewModel.changeTab, newTabValue: "name", nameString: "arrow.backward")
                Spacer()
                ArrowIcon(functionToRun: viewModel.changeTab, newTabValue: "password", nameString: "arrow.forward")
            }
            .padding()
        }
            Spacer()
            VStack {
                Text("What is your email?")
                RegularTextField(text: "Email", variableToModify: $viewModel.email, isEmail: true, onChange: viewModel.emailCheck)
                ErrorText(text: viewModel.emailError.rawValue)
            }
            .frame(height: 250)
            Spacer()
            Button {
                viewModel.emailCheck()
                if (viewModel.emailError.rawValue == "") {
                    viewModel.changeTab(tab: "password")
                }
            } label: {
                FormButtonLabel(text: "Continue", isDisabled: true)
            }
            Spacer()         
        }

    }

#Preview {
    SignUpEmail(viewModel: SignUpViewModel())
}

