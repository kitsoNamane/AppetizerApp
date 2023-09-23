//
//  AppetizerItemView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 18/09/23.
//

import SwiftUI

struct AppetizerItemView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerItemView(appetizer: MockData.orderItemOne)
}
