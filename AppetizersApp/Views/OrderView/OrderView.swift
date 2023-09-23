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
    
    @State private var orderItems = MockData.appetizers
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerItemView(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(orderTotal, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 20)
                }
                
                if orderItems.isEmpty {
                    EmptyState(title: "You have no items in your order. Please add an appetizer", imageName: "empty-order")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
