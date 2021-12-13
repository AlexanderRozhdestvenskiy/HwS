//
//  FirstView.swift
//  CoreDataProject
//
//  Created by Alexander Rozhdestvenskiy on 13.12.2021.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct FirstView: View {
    
    var students: [Student] = [Student(name: "Brad Pitt"), Student(name: "Tom Hardy")]
    
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
