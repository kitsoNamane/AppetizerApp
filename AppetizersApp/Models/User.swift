//
//  User.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 20/09/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var extraNapkins = false
    var frequentRefills = false
}
