//
//  Model.swift
//  iExpence
//
//  Created by Alexander Rozhdestvenskiy on 28.11.2021.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
