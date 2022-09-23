//
//  DateHelper.swift
//  BookStore
//
//  Created by Jicell on 9/23/22.
//

import Foundation
extension Date {
    // Extends the date class giving us the ability to conver a date to a string.
    
    func stringValue() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
}
