//
//  OrderView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerItemView(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 20)
                }
                
                if order.items.isEmpty {
                    EmptyState(title: "You have no items in your order. Please add an appetizer", imageName: "empty-order")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
        .environmentObject({ () -> Order in
            let envObj = Order()
            envObj.items = MockData.appetizers
            return envObj
        }())
}
