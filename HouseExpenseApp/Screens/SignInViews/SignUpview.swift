//
//  SignUpview.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 05/10/2023.
//

import SwiftUI

struct SignUpview: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HeaderView(isLoggedIn: false)
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white.opacity(0.9))
                    VStack(alignment:.center) {
                        Spacer()
                        LoginHeader(text: "Email")
                        RegularTextField(text:"Enter Email", variableToModify: $email, isEmail: true)
                        Spacer()
                        LoginHeader(text: "Password")
                        PasswordField(text:"Password", variableToModify: $password, isHidden: true)
                        Spacer()
                        LoginHeader(text: "Confirm Password")
                        PasswordField(text:"Confirm Password", variableToModify: $confirmPassword, isHidden: true)
                        Spacer()
                        Button {
                            
                        } label: {
                            GenericButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Sign Up")
                        }
                        Spacer()
                    }
                }
                .frame(height: 500)
                .cornerRadius(20)
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    SignUpview()
}
