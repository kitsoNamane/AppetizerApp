//
//  AppetizerDetailedView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 19/09/23.
//

import SwiftUI

struct AppetizerDetailedView: View {
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity)
                .overlay(alignment: .topTrailing) {
                    Image(systemName: "xmark.circle.fill")
                        .symbolRenderingMode(.palette)
                        .resizable()
                        .foregroundStyle(.gray, .white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .shadow(radius: 10)
                        .padding()
                        .onTapGesture {
                            print("dismiss detailed view")
                        }
                }
                
            Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.medium)
                    
            Text(appetizer.description)
                    .font(.title2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    
            HStack(spacing: 40) {
                VStack {
                    Text("Calories")
                    Text("\(appetizer.calories)")
                        .font(.title3)
                        .fontWeight(.ultraLight)
                        .italic()
                }
                VStack {
                    Text("Carbs")
                    Text("\(appetizer.carbs) g")
                        .font(.title3)
                        .fontWeight(.ultraLight)
                        .italic()
                }
                VStack {
                    Text("Protein")
                    Text("\(appetizer.protein) g")
                        .font(.title3)
                        .fontWeight(.ultraLight)
                        .italic()
                }
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
            
            Button {
                
            } label: {
                Text("$\(appetizer.price, specifier: "%0.2f") - Add To Order")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.brandPrimary)
            .padding()
        }
    }
}

#Preview {
    AppetizerDetailedView(appetizer: MockData.sampleAppetizer)
}
