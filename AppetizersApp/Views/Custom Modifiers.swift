//
//  Custom Modifiers.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 24/09/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accentColor)
            .controlSize(.large)
    }
    
}

extension Button {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}

struct Custom_Modifiers: View {
    var body: some View {
        Button {
            } label: {
                Text("$90.89 - Add To Order")
            }
            .modifier(StandardButtonStyle())
    }
}

#Preview {
    Custom_Modifiers()
}
