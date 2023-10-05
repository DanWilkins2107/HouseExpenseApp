//
//  SwiftUIView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import SwiftUI

struct HeaderView: View {
    var isLoggedIn: Bool
    var body: some View {
        HStack {
            Circle()
                .frame(width: 70, height: 70)
            if isLoggedIn {
                Spacer()
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .font(.title)
            }
        }
        .padding()
    }
}

#Preview {
    HeaderView(isLoggedIn: false)
}
