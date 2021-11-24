//
//  ContentView.swift
//  ViewModifier
//
//  Created by Alexander Rozhdestvenskiy on 23.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Title Style")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200, alignment: .center)
            .watermarked(with: "Hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    // MARK: - Title

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

    // MARK: - Watermark

struct Watermark: ViewModifier {
    
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            
            content
            
            Text(text)
                .font(.callout)
                .foregroundColor(.white)
                .padding(4)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}
