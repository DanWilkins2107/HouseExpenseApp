//
//  EditItemsAdminView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 08/10/2023.
//

import SwiftUI

struct EditItemsAdminView: View {
    @State var shownItems = ["category1": true, "category2": false, "category3": false]
    var household: Household
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("Edit Items")
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
                                    Spacer()
                                    Icon(imageName: "square.and.pencil")
                                    Spacer()
                                    Icon(imageName: "trash")
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

struct CardView: View {
    var keyValuePairs: [String: Double]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .padding(.horizontal)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                ForEach(keyValuePairs.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                    HStack {
                        Text(key)
                        Spacer()
                        Text(String(value))
                    }
                    .padding(.horizontal)
                }
                Text("Also show latest transactions here")
            }
            .padding()
        }
    }
}

struct Icon: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 44, height: 44)
    }
}

#Preview {
    EditItemsAdminView(household: MockData.house1)
}
