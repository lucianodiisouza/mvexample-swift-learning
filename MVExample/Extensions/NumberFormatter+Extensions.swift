//
//  NumberFormat.swift
//  MVExample
//
//  Created by Luciano dii Souza on 30/06/25.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
