//
//  ContentView.swift
//  iExpence
//
//  Created by Alexander Rozhdestvenskiy on 28.11.2021.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Second View")
        Button("Dismiss") {
            dismiss()
        }
    }
}
