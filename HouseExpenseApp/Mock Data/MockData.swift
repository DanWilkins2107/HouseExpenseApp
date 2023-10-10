//
//  MockData.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import Foundation

struct MockData {
    static let house1 = Household(id: "id1", householdName: "Colin House", noOfMembers: 2, adminID: "id1", userIDs: ["id1", "id2"], joiningCode: "12345", itemsAndTotals: Items, expenseHistory: expenseHistory)
    static let house2 = Household(id: "id2", householdName: "Household 2", noOfMembers: 2, adminID: "id1", userIDs: ["id1", "id2"], joiningCode: "12345", itemsAndTotals: Items, expenseHistory: expenseHistory)
    static let house3 = Household(id: "id3", householdName: "Household 3", noOfMembers: 4, adminID: "id1", userIDs: ["id1", "id2"], joiningCode: "12345", itemsAndTotals: Items, expenseHistory: expenseHistory)
    static let house4 = Household(id: "id4", householdName: "Household 4", noOfMembers: 5, adminID: "id1", userIDs: ["id1", "id2"], joiningCode: "12345", itemsAndTotals: Items, expenseHistory: expenseHistory)
    static let house5 = Household(id: "id5", householdName: "Household 5", noOfMembers: 3, adminID: "id1", userIDs: ["id1", "id2"], joiningCode: "12345", itemsAndTotals: Items, expenseHistory: expenseHistory)
    static let householdArray = [house1, house2, house3, house4, house5]
    
    static let Items: [Item] = [
        Item(name: "category1", totals: ["id1": 10.23, "id2": 4.21]),
        Item(name: "category2", totals: ["id1": 10.22, "id2": 4.21]),
        Item(name: "category3", totals: ["id1": 1245.23, "id2": 0.21])
    ]
    
    static let expenseHistory: [Expense] = [
        Expense(id: "id1", userID: "user1", category: "Kitchen", price: 2.18, description: "Cheese", date: Date.now),
        Expense(id: "id2", userID: "user2", category: "Kitchen", price: 3.20, description: "Choc", date: Date.now),
        Expense(id: "id3", userID: "user3", category: "Kitchen", price: 2.18, description: "Cheese", date: Date.now),
        Expense(id: "id2", userID: "user2", category: "Kitchen", price: 3.20, description: "Choc", date: Date.now),
        Expense(id: "id1", userID: "user1", category: "Kitchen", price: 2.18, description: "Cheese", date: Date.now),
        Expense(id: "id2", userID: "user2", category: "Kitchen", price: 3.20, description: "Choc", date: Date.now)
    ]
}


