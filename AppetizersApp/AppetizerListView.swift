//
//  AppetizerListView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                Text(appetizer.name)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
