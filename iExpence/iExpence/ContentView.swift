//
//  ContentView.swift
//  iExpence
//
//  Created by Alexander Rozhdestvenskiy on 28.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var expenses = Expenses()
    
    @State private var showingAddExperense = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: expenses.removeItem(at:))
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExperense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $showingAddExperense) {
            AddView(expenses: expenses)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
