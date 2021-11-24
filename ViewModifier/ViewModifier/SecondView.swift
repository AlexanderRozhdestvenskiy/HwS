//
//  SecondView.swift
//  ViewModifier
//
//  Created by Alexander Rozhdestvenskiy on 23.11.2021.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let row: Int
    let columns: Int
    
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<row, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        GridStack(row: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
