//
//  TextFieldView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 06/10/2023.
//

import SwiftUI

struct LoginHeader: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title2)
    }
}

struct RegularTextField: View {
    var text: String
    @Binding var variableToModify: String
    var isEmail: Bool
    var body: some View {
        TextField(text, text: $variableToModify)
            .multilineTextAlignment(.center)
            .autocapitalization(.none)
            .keyboardType(isEmail ? .emailAddress : .default)
            .padding()
    }
}

struct PasswordField: View {
    var text: String
    @Binding var variableToModify: String
    var isHidden: Bool
    var body: some View {
        SecureField(text, text: $variableToModify)
            .multilineTextAlignment(.center)
            .autocapitalization(.none)
            .padding()
    }
}


