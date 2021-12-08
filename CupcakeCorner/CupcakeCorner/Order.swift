//
//  Order.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

final class Order: ObservableObject, Codable {
   
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
    
    init() {
        
    }
    
    enum CodingKeys: CodingKey {
        case type, quantity, extraFrosting, addSprinkless, name, streetAdress, city, zip
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(type, forKey: .type)
        try container.encode(quantity, forKey: .quantity)
        
        try container.encode(extraFrosting, forKey: .extraFrosting)
        try container.encode(addSprinkless, forKey: .addSprinkless)
        
        try container.encode(name, forKey: .name)
        try container.encode(streetAdress, forKey: .streetAdress)
        try container.encode(city, forKey: .city)
        try container.encode(zip, forKey: .zip)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try container.decode(Int.self, forKey: .type)
        quantity = try container.decode(Int.self, forKey: .quantity)
        
        extraFrosting = try container.decode(Bool.self, forKey: .extraFrosting)
        addSprinkless = try container.decode(Bool.self, forKey: .addSprinkless)
        
        name = try container.decode(String.self, forKey: .name)
        streetAdress = try container.decode(String.self, forKey: .streetAdress)
        city = try container.decode(String.self, forKey: .city)
        zip = try container.decode(String.self, forKey: .zip)
    }
}
