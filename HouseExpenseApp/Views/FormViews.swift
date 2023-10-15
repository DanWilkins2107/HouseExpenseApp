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
    var onChange: () -> Void
    var body: some View {
        TextField(text, text: $variableToModify)
            .onChange(of: variableToModify, perform: {_ in
            onChange()})
            .multilineTextAlignment(.leading)
            .autocapitalization(.none)
            .keyboardType(isEmail ? .emailAddress : .default)
            .frame(height: 50)
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray))
    }
}

struct PasswordOnlyTextField: View {
    var text: String
    @Binding var variableToModify: String
    var onChange: () -> Void
    var body: some View {
        SecureField(text, text: $variableToModify)
            .onChange(of: variableToModify, perform: {_ in
            onChange()})
            .multilineTextAlignment(.leading)
            .autocapitalization(.none)
            .frame(height: 50)
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray))
    }
}

struct PasswordTextField: View {
    var text: String
    @Binding var variableToModify: String
    var onChange: () -> Void
    @Binding var isHidden: Bool
    var body: some View {
        HStack {
            if (isHidden) {
                SecureField(text, text: $variableToModify)
                .onChange(of: variableToModify, perform: {_ in
                    onChange()})
                    .multilineTextAlignment(.leading)
                    .autocapitalization(.none)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray))
            } else {
                TextField(text, text: $variableToModify)
                    .onChange(of: variableToModify, perform: {_ in
                        onChange()})
                    .multilineTextAlignment(.leading)
                    .autocapitalization(.none)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray))
            }
            PasswordShownToggle(boolToToggle: $isHidden)
        }
    }
}

struct PasswordShownToggle: View {
    @Binding var boolToToggle: Bool
    var body: some View {
        Image(systemName: "eye")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 44, height: 44)
            .onTapGesture {
                boolToToggle.toggle()
            }
    }
}

struct ArrowIcon: View {
    var functionToRun: (String) -> Void
    var newTabValue: String
    var nameString: String
    var body: some View {
        Image(systemName: nameString)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.gray)
            .frame(width: 25, height: 25)
            .frame(width: 44, height: 44)
            .onTapGesture {
                functionToRun(newTabValue)
            }
    }
}

struct FormButtonLabel: View {
    var text: String
    var isDisabled: Bool
    var body: some View {
        Text(text)
            .frame(maxWidth:.infinity, minHeight: 50)
            .foregroundStyle(Color.white)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(50)
    }
}

struct ErrorText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.footnote)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundStyle(.red)
    }
}


