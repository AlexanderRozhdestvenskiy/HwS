//
//  Model.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 05.12.2021.
//

import Foundation

protocol HabitProtocol {
    var id: UUID { get set }
    var title: String { get }
    var habit: String { get }
}

struct Habit: HabitProtocol, Identifiable, Codable {
    var id = UUID()
    let title: String
    let habit: String
}

extension Habit {
    static var example: [Habit] = [Habit(title: "Привычка", habit: "Описание")]
}
