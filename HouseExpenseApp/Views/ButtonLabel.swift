//
//  ButtonLabel.swift
//  HouseExpenseApp
//
//  Created by Daniel Wilkins on 08/10/2023.
//

import SwiftUI

struct GenericButtonLabel: View {
    var foregroundColor: Color
    var backgroundColor: Color
    var text: String
    var body: some View {
        Text(text)
            .font(.title)
            .frame(width: 280, height: 50)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor.gradient)
            .cornerRadius(10)
        }
    }

struct MaxWidthButtonLabel: View {
    var foregroundColor: Color
    var backgroundColor: Color
    var text: String
    var body: some View {
        Text(text)
            .font(.title)
            .frame(maxWidth:.infinity, minHeight: 50)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor.gradient)
            .cornerRadius(10)
        }
    }
