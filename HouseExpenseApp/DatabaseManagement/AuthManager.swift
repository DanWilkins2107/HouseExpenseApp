//
//  DatabaseManager.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 11/10/2023.
//

import Supabase

class AuthManager {
    var auth = SupabaseClientManager.shared.supabase.auth
    
    func handleSignUp(email: String, password: String) async {
        do {
            let response = try await auth.signUp(email: email, password: password)
        } catch {
            // TODO: Sort Error
            print("Unexpected error during sign-up: \(error.localizedDescription)")
        }
    }
}
