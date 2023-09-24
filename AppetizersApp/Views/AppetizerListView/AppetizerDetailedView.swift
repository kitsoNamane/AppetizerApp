//
//  AppetizerDetailedView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 19/09/23.
//

import SwiftUI

struct AppetizerDetailedView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 320, height: 225)
                .aspectRatio(contentMode: .fit)
            
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.medium)
            
            Text(appetizer.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack(spacing: 40) {
                NutritionInfo(title: "Calories", value: appetizer.calories)
                
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add To Order")
            }
            .standardButtonStyle()
            .controlSize(.large)
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            APDismissButton()
                .onTapGesture {
                    isShowingDetail = false
                }
        }
    }
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 4) {
            Text(title)
            Text("\(value)")
                .font(.title3)
                .fontWeight(.ultraLight)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailedView(appetizer: MockData.orderItemOne, isShowingDetail: .constant(false))
}
