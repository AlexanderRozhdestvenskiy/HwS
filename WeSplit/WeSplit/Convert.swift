//
//  Convert.swift
//  WeSplit
//
//  Created by Alexander Rozhdestvenskiy on 18.11.2021.
//

import SwiftUI

struct Convert: View {
    
    @State private var num = 0.0
    @State private var input = "Mg"
    @State private var output = "Kg"
    
    let pickerValue = ["Mg", "Kg"]
    
    var result: Double {
        
        
        
        return 0
    }
    
    var body: some View {
        Form {
            Picker("Input", selection: $input) {
                ForEach(pickerValue, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            
            TextField("Num", value: $num, format: .number)
            
            Picker("Output", selection: $output) {
                ForEach(pickerValue, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            
            Text("Hello")
        }
    }
}

struct Convert_Previews: PreviewProvider {
    static var previews: some View {
        Convert()
    }
}
