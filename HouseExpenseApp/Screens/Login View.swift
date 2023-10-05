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
                        Text("Email")
                            .font(.title2)
                        TextField("Enter Email", text: $email)
                            .multilineTextAlignment(.center)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .padding()
                        Spacer()
                        Text("Password")
                            .font(.title2)
                        SecureField("Enter Password", text: $password)
                            .multilineTextAlignment(.center)
                            .autocapitalization(.none)
                            .padding()
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Login")
                                .font(.title)
                                .frame(width: 280, height: 50)
                                .foregroundStyle(Color.white)
                                .background(.blue.gradient)
                                .cornerRadius(10)
                                .padding()
                        }
                        Spacer()
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
