//
//  SpecialEffect.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 04.12.2021.
//

import SwiftUI

struct SpecialEffect: View {
    
    @State private var amount = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(.green)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(.blue)
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
            
            Image("Avatar 2018")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct SpecialEffect_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffect()
    }
}
