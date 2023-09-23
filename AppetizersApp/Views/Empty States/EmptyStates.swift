//
//  EmptyStates.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 23/09/23.
//

import SwiftUI

struct EmptyStates: View {
    let title: String
    var body: some View {
        VStack {
            Image("empty-order")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .padding()
        }
    }
}

#Preview {
    EmptyStates(title: "No content, please try again later")
}
