//
//  SwiftUIView.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 04/10/2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.yellow.gradient)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    BackgroundView()
}
