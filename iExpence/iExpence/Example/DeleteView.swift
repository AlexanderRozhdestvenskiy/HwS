//
//  DeleteView.swift
//  iExpence
//
//  Created by Alexander Rozhdestvenskiy on 28.11.2021.
//

import SwiftUI

struct DeleteView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("On Delete")
            .toolbar {
                EditButton()
            }
        }
    }
    
    private func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct DeleteView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteView()
    }
}
