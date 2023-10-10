//
//  ViewTransactionsAdminView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 08/10/2023.
//

import SwiftUI

struct ViewExpensesAdminView: View {
    var household: Household
    let columns = [GridItem(.adaptive(minimum: 50))]
    let rows = [GridItem(.adaptive(minimum: 50))]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
    func formatPrice(_ price: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_UK")
        if let formattedPrice = formatter.string(from: NSNumber(value: price)) {
            return formattedPrice
        }
        return ""
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text(household.householdName)
                ScrollView(.horizontal) {
                    ScrollView(.vertical) {
                        VStack(spacing: 0) {
                            ForEach(household.expenseHistory) { expense in
                                HStack(spacing: 0) {
                                    Text(expense.userID)
                                        .frame(width: 100)
                                        .frame(maxHeight: .infinity)
                                        .border(.gray)
                                    Text(expense.category)
                                        .frame(width: 100)
                                        .frame(maxHeight: .infinity)
                                        .border(.gray)
                                    Text(expense.description)
                                        .frame(width: 100)
                                        .frame(maxHeight: .infinity)
                                        .border(.gray)
                                    Text(String(formatPrice(expense.price)))
                                        .frame(width: 100)
                                        .frame(maxHeight: .infinity)
                                        .border(.gray)
                                    Text(dateFormatter.string(from: expense.date))
                                        .frame(width: 100)
                                        .frame(maxHeight: .infinity)
                                        .border(.gray)
                                    
                                }
                                .frame(width: 500, height: 50)
                                .border(.black)
                                .background(.white)
                            }
                        }
                    }
                }
                }
            }
        }
    }

#Preview {
    ViewExpensesAdminView(household: MockData.house1)
}
