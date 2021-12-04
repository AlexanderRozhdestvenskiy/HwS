//
//  ContentView.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 02.12.2021.
//

import SwiftUI

struct ArrayView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX / 2, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX / 2, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX / 4 * 3, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX / 4 * 3, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ContentView: View {
    
    @State private var line = 12.0
    
    var body: some View {
        VStack {
            Spacer()
            
            ArrayView()
                .stroke(.red, style: StrokeStyle(lineWidth: CGFloat(line),
                                                 lineCap: .round,
                                                 lineJoin: .round)
                )
                .frame(width: 300, height: 500)
            
            Spacer()
            
            Slider(value: $line, in: 1...64)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
