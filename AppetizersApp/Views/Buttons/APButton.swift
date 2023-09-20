//
//  APButton.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 20/09/23.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "$\(23.909, specifier: "%.2f") - Add To Order")
}
