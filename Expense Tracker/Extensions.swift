//
//  Extensions.swift
//  Expense Tracker
//
//  Created by Anton Rasen on 16.10.2023.
//

import Foundation
import SwiftUI

extension Color {
    static let backgoundColor = Color("Backgound")
    static let iconColor = Color("Icon")
    static let textColor = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNymeric: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNymeric.date(from: self) else { return Date() }
        
        return parsedDate
    }
}
