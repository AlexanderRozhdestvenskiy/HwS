//
//  AdressView.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

struct AdressView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Имя", text: $order.name)
                TextField("Адрес", text: $order.streetAdress)
                TextField("Город", text: $order.city)
                TextField("Индекс", text: $order.zip)
            }
            
            Section {
                NavigationLink {
                    CheckoutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAdress == false)
        }
        .navigationTitle("Детали доставки")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AdressView_Previews: PreviewProvider {
    static var previews: some View {
        AdressView(order: Order())
    }
}
