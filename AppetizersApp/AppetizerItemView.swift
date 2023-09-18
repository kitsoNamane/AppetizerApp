//
//  AppetizerItemView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 18/09/23.
//

import SwiftUI

struct AppetizerItemView: View {
    let imageURL: String
    let name: String
    let price: Float
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .frame(width: 140)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
                Text("$\(String(format: "%.2f", price))")
                    .fontWeight(.ultraLight)
            }
        }
    }
}

#Preview {
    AppetizerItemView(imageURL: "asian-flank-steak", name: "Buffalo Chicked Bites", price: 12.99)
}
