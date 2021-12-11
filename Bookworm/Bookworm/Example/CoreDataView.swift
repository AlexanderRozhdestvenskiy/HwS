//
//  CoreDataView.swift
//  Bookworm
//
//  Created by Alexander Rozhdestvenskiy on 10.12.2021.
//

import SwiftUI

struct CoreDataView: View {
    var body: some View {
        Text("Core Data")
            .foregroundColor(.white)
            .font(.largeTitle)
            .bold()
            .padding()
            .background(.red)
            .clipShape(Capsule())
            .shadow(color: .black, radius: 8, x: 4, y: 4)
    }
}

struct CoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataView()
    }
}
