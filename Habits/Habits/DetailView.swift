//
//  DetailView.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 05.12.2021.
//

import SwiftUI

struct DetailView: View {
    
    var habit: Habit
    
    var body: some View {
        VStack {
            Text(habit.habit)
                .font(.title)
        }
        .navigationTitle(habit.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(habit: Habit.example[0])
    }
}
