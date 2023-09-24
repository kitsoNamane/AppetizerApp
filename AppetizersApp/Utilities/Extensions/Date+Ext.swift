//
//  Date+Ext.swift
//  AppetizersApp
//
//  Created by Kitso Namane on 24/09/23.
//

import Foundation

extension Date {

    var eightTeenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: .now)!
    }
    
    var oneHundredYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -100, to: .now)!
    }
}
