//
//  Login View.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 05/10/2023.
//

import SwiftUI

struct Login_View: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HeaderView(isLoggedIn: false)
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white.opacity(0.9))
                    VStack(alignment: .center) {
                        Spacer()
                        LoginHeader(text: "Email")
                        RegularTextField(text: "Enter Email", variableToModify: $email, isEmail: true)
                        Spacer()
                        LoginHeader(text: "Password")
                        PasswordField(text: "Enter Password", variableToModify: $password, isHidden: true)
                        Spacer()
                        Button {
                            
                        } label: {
                            GenericButtonLabel(foregroundColor: .white, backgroundColor: .blue, text: "Login")
                                .padding()
                        }
                    }
                }
                .frame(height: 400)
                .cornerRadius(20)
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    Login_View()
}
