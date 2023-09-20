//
//  APDismissButton.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 20/09/23.
//

import SwiftUI

struct APDismissButton: View {
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .symbolRenderingMode(.palette)
            .resizable()
            .imageScale(.small)
            .foregroundStyle(.gray, .white)
            .aspectRatio(contentMode: .fit)
            .opacity(0.6)
            .frame(width: 44, height: 44)
            .shadow(radius: 10)
    }
}

#Preview {
    APDismissButton()
}
