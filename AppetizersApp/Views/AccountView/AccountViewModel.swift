//
//  AccountViewModel.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 20/09/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthDay = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            return false
        }
        
        guard email.isValidEmail else {
            return false
        }
        
        return true
    }
}
