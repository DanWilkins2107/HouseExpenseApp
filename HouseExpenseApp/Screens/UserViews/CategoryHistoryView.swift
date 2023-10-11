//
//  CategoryHistoryView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 10/10/2023.
//

import SwiftUI

struct CategoryHistoryView: View {
    @State var shownItems = ["category1": true, "category2": false, "category3": false]
    var household: Household
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("View Categories")
                    .font(.title)
                    .fontWeight(.bold)
                ScrollView(.vertical) {
                    ForEach(household.itemsAndTotals, id: \.self) { item in
                        VStack {
                            HStack {
                                Text(item.name)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 200)
                                Spacer()
                                Icon(imageName: "eye")
                                    .onTapGesture {
                                        shownItems[item.name]!.toggle()
                                    }
                            }
                            .background(.white)
                            .padding(.horizontal)
                            if (shownItems[item.name] == true) {
                                VStack {
                                    CardView(keyValuePairs: item.totals)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryHistoryView(household: MockData.house1)
}
