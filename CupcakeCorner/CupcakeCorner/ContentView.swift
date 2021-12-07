//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var order = Order()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Выберите тип кекса", selection: $order.type) {
                        ForEach(Order.types.indices) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper("Количество: \(order.quantity)", value: $order.quantity, in: 1...20)
                }
                
                Section {
                    Toggle("Есть особые пожелания?", isOn: $order.specialRequestEnabled.animation())
                    
                    if order.specialRequestEnabled {
                        Toggle("Добавьте глазурь", isOn: $order.extraFrosting)
                        Toggle("Добавьте пудру", isOn: $order.addSprinkless)
                    }
                }
                
                Section {
                    NavigationLink {
                        AdressView(order: order)
                    } label: {
                        Text("Детали доставки")
                    }
                }
            }
            .navigationTitle("Магазин Кексов")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
