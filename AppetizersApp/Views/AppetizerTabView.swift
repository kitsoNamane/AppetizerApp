//
//  ContentView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
        .environmentObject({() -> Order in
            let envObj = Order()
            envObj.items = MockData.appetizers
            return envObj
        }())
}
