//
//  AppetizersAppApp.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
