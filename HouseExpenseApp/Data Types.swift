//
//  Data Types.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 09/10/2023.
//

import SwiftUI

struct Household: Hashable, Identifiable {
    let id: String
    let householdName: String
    let noOfMembers: Int
    let adminID: String
    let userIDs: [String]
    let joiningCode: String
    let itemsAndTotals: [Item]
    let expenseHistory: [Expense]
}

struct Expense: Hashable, Identifiable {
    let id: String
    let userID: String
    let category: String
    let price: Double
    let description: String
    let date: Date
    
}

struct Item: Hashable {
    let name: String
    let totals: [String: Double]
}
