//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

struct CheckoutView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 233)
                
                Text("Ваш заказ на \(order.cost, format: .currency(code: "RUB"))")
                    .font(.title2)
                
                Button("Заказать") {
                    
                }
                .padding()
            }
        }
        .navigationTitle("Подтвердите заказ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
