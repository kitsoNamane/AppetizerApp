//
//  AppetizerViewModel.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 19/09/23.
//

import Foundation


final class AppetizerViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in 
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
