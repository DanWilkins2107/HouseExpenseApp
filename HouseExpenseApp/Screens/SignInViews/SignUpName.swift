//
//  SignUp.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 12/10/2023.
//

import SwiftUI

struct SignUpName: View {
    @ObservedObject var viewModel: SignUpViewModel
    var body: some View {
        ZStack {
            HeaderView(isLoggedIn: false)
            HStack {
                Spacer()
                ArrowIcon(functionToRun: viewModel.changeTab,newTabValue: "email", nameString: "arrow.forward")
            }
            .padding()
        }
            Spacer()
            VStack {
                Text("Welcome to House Expenses")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Spacer()
                Text("What should we call you?")
                RegularTextField(text: "Name", variableToModify: $viewModel.name, isEmail: false, onChange: viewModel.nameCheck)
                ErrorText(text: viewModel.nameError.rawValue)
            }
            .frame(height: 250)
            Spacer()
            Button {
                viewModel.nameCheck()
                if (viewModel.nameError.rawValue == "") {
                    viewModel.changeTab(tab: "email")
                }
            } label: {
                FormButtonLabel(text: "Continue", isDisabled: false)
            }
            Spacer()
    }
}

#Preview {
    SignUpName(viewModel: SignUpViewModel())
}
