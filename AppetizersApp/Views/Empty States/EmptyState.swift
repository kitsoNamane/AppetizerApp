//
//  EmptyStates.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 23/09/23.
//

import SwiftUI

struct EmptyState: View {
    let title: String
    let imageName: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState(title: "This is our test message.\nI'm making it long for testing.", imageName: "empty-order")
}
