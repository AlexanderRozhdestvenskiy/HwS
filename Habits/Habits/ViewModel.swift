//
//  ViewModel.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 05.12.2021.
//

import Foundation

final class Habits: ObservableObject {
    
    @Published var habits: [Habit] = Habit.example {
        didSet {
            if let encoded = try? JSONEncoder().encode(habits) {
                UserDefaults.standard.set(encoded, forKey: "Habits")
            }
        }
    }
    
    @Published var isShowAddView: Bool = false
    @Published var isShowInfoView: Bool = false
    
    init() {
        if let savedHabits = UserDefaults.standard.data(forKey: "Habits") {
            if let decodeItems = try? JSONDecoder().decode([Habit].self, from: savedHabits) {
                habits = decodeItems
                return
            }
        }
        
        habits = Habit.example
    }
    
    func removeHabit(at offsets: IndexSet) {
        habits.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        habits.move(fromOffsets: source, toOffset: destination)
    }
}
