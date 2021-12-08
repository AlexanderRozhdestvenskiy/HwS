//
//  CodableView.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

final class User: ObservableObject, Codable {
    
    @Published var name = "Alexander Rozhdestvenskiy"
    @Published var count = 1
    
    enum CodingKeys: CodingKey {
        case name
        case count
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        count = try container.decode(Int.self, forKey: .count)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(count, forKey: .count)
    }
}

struct CodableView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CodableView_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
