//
//  AccountView.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 16/09/23.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDay = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    
                    TextField("Last Name", text: $lastName)
                    
                    TextField("Email Name", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        
                    DatePicker("Birthday", selection: $birthDay, displayedComponents: .date)
                    
                    Button {
                        print("save changes")
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("🤣 Accounts")
        }
    }
}

#Preview {
    AccountView()
}
