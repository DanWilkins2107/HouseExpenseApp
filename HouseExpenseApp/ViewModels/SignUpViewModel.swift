//
//  SignUpViewModel.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 12/10/2023.
//

import SwiftUI

final class SignUpViewModel: ObservableObject {
    
    @Published var selectedTab = "name"
    
    func changeTab(tab: String) {
        withAnimation {
            selectedTab = tab
        }
    }
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    @Published var passwordHidden = true
    @Published var confirmPasswordHidden = true
    
    @Published var nameError = ErrorMessages.None
    @Published var emailError = ErrorMessages.None
    @Published var passwordError = ErrorMessages.None
    @Published var confirmPasswordError = ErrorMessages.None
    
    enum ErrorMessages: String {
        case None = ""
        case NoNameEntered = "Please enter a name"
        case NoEmailEntered = "Please enter an email"
        case InvalidEmailEntered = "Please enter a valid email"
        case NoPasswordEntered = "Please enter a password"
        case NoConfirmPasswordEntered = "Please confirm your password"
        case PasswordTooShort = "Password must be 8 or more digits"
        case PasswordsDoNotMatch = "Passwords need to match"
    }
    
    func nameCheck() {
        if (name.count == 0) {
            nameError = ErrorMessages.NoNameEntered
            return
        }
        nameError = ErrorMessages.None
    }

    func emailCheck() {
        if (email == "") {
            emailError = ErrorMessages.NoEmailEntered
            return
        }
        // add in email check here!
        
    }
    
    func passwordCheck() {
        if (confirmPassword.count != 0) {
            if (password != confirmPassword) {
                confirmPasswordError = ErrorMessages.PasswordsDoNotMatch
            } else {
                confirmPasswordError = ErrorMessages.None
            }
        }
        if (password.count == 0) {
            passwordError = ErrorMessages.NoPasswordEntered
            return
        }
        if (password.count < 8) {
            passwordError = ErrorMessages.PasswordTooShort
            return
        }
        passwordError = ErrorMessages.None
    }
    
    func confirmPasswordCheck() {
        if (password != confirmPassword) {
            confirmPasswordError = ErrorMessages.PasswordsDoNotMatch
            return
        }
        confirmPasswordError = ErrorMessages.None
        
    }
    
    func handleSignUp() async -> Void {
        await AuthManager.shared.handleSignUp(email: email, password: password)
    }
    
}
