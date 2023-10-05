//
//  MockData.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import Foundation

struct Household: Hashable, Identifiable {
    let id: String
    let householdName: String
    let noOfMembers: Int
    let adminID: String
}

struct MockData {
    static let house1 = Household(id: "1", householdName: "Colin House", noOfMembers: 6, adminID: "admin1")
    static let house2 = Household(id: "2", householdName: "Household 2", noOfMembers: 2, adminID: "admin2")
    static let house3 = Household(id: "3", householdName: "Household 3", noOfMembers: 4, adminID: "admin3")
    static let house4 = Household(id: "4", householdName: "Household 4", noOfMembers: 5, adminID: "admin4")
    static let house5 = Household(id: "5", householdName: "Household 5", noOfMembers: 3, adminID: "admin5")
    static let householdArray = [house1, house2, house3, house4, house5]
}
