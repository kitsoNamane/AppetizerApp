//
//  OrderView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct OrderView: View {
    private var orderTotal: Double {
        var total = 0.0
        MockData.appetizers.forEach {appetizer in 
            total = total + appetizer.price
        }
        return total
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List(MockData.appetizers) { appetizer in
                    AppetizerItemView(appetizer: appetizer)
                }
                
                Spacer()
                
                APButton(title: "$\(orderTotal, specifier: "%.2f") - Place Order")
                    .padding(.bottom, 40)
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
