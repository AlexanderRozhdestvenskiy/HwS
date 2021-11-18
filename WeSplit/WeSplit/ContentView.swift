//
//  ContentView.swift
//  WeSplit
//
//  Created by Alexander Rozhdestvenskiy on 18.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercintage = 20
    @FocusState private var amountFocused: Bool
    
    let tipPercintages = [10, 15, 20, 25, 0]
    
    var totalCheck: Double {
        let tipSelection = Double(tipPercintage)
        let tipValue = checkAmount / 100 * tipSelection
        let totalCheck = checkAmount + tipValue
        
        return totalCheck
    }
    
    var totalCheckPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercintage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                // Счет и количество человек
                
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountFocused)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2..<26) {
                            Text("\($0) people")
                        }
                    }
                } header: {
                    Text("Check Amount")
                }
                
                // Процент чаевых
                
                VStack {
                    
                    Text("How much tip do you want to leave?")
                    
                    Picker("Tip percentage", selection: $tipPercintage) {
                        ForEach(tipPercintages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                // Счет с учетом чаевых
                
                Section {
                    Text(totalCheck, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Total Check")
                }
                
                // Счет на каждого человека
                
                Section {
                    Text(totalCheckPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Amount per Person")
                }
            }
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone SE (1st generation)")
        }
    }
}
