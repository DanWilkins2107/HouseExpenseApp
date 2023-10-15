//
//  SignUpPassword.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 14/10/2023.
//

import SwiftUI

struct SignUpPassword: View {
    @ObservedObject var viewModel: SignUpViewModel
    var body: some View {
        ZStack {
            HeaderView(isLoggedIn: false)
            HStack {
                ArrowIcon(functionToRun: viewModel.changeTab, newTabValue: "email", nameString: "arrow.backward")
                Spacer()
            }
            .padding()
        }
            Spacer()
            VStack {
                Spacer()
                Text("What Is Your Password?")
                PasswordTextField(text: "Password",
                                  variableToModify: $viewModel.password,
                                  onChange: viewModel.passwordCheck,
                                  isHidden: $viewModel.passwordHidden)
                ErrorText(text: viewModel.passwordError.rawValue)
                Spacer()
                Text("Please Confirm Your Password")
                PasswordTextField(text: "Password", 
                                  variableToModify: $viewModel.confirmPassword,
                                  onChange: viewModel.confirmPasswordCheck,
                                  isHidden: $viewModel.confirmPasswordHidden)
                ErrorText(text: viewModel.confirmPasswordError.rawValue)
                Spacer()
            }
            .frame(height: 250)
            Spacer()
            Button {
                
            } label: {
                FormButtonLabel(text: "Sign Up", isDisabled: true)
            }
            Spacer()
        }
}

#Preview {
    SignUpPassword(viewModel: SignUpViewModel())
}
