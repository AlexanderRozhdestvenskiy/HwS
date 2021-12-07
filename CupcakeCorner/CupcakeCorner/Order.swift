//
//  Order.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

final class Order: ObservableObject {
   
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var extraFrosting = false
    @Published var addSprinkless = false
    
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkless = false
            }
        }
    }
    
    // Детали доставки
    
    @Published var name = ""
    @Published var streetAdress = ""
    @Published var city = ""
    @Published var zip = ""
    
    // Валидность адреса
    
    var hasValidAdress: Bool {
        if name.isEmpty || streetAdress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        
        return true
    }
    
    // Цена кекса
    
    var cost: Double {
        
        var cost = Double(quantity) * 100

        cost += (Double(type) * 10)

        if extraFrosting {
            cost += (Double(quantity) * 25)
        }

        if addSprinkless {
            cost += (Double(quantity) * 15)
        }

        return cost
    }
    
    // Виды кексов
    
    static let types = ["Ванильный", "Шоколадный", "Клубничный", "Сырный"]
}
