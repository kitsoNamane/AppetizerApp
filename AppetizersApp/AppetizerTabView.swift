//
//  ContentView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("BrandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
