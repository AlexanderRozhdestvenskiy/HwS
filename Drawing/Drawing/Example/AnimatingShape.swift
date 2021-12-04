//
//  AnimatingShape.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 04.12.2021.
//

import SwiftUI

struct Trapezoid: Shape {
    var insetAmount: Double
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: rect.maxY))
        path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
        
        return path
    }
}

struct AnimatingShape: View {
    
    @State private var amount = 50.0
    
    var body: some View {
        Trapezoid(insetAmount: amount)
            .fill(.orange)
            .frame(width: 200, height: 200)
            .onTapGesture {
                withAnimation {
                    amount = Double.random(in: 10...90)
                }
            }
    }
}

struct AnimatingShape_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingShape()
    }
}
