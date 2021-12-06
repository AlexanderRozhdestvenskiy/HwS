//
//  AddView.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 05.12.2021.
//

import SwiftUI

struct AddView: View {
    
    @ObservedObject var viewModel: Habits
    
    @State private var title: String = ""
    @State private var habit: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Название")) {
                    TextField("Введите название", text: $title)
                }
                Section(header: Text("Привычка")) {
                    TextField("Описание", text: $habit)
                }
            }
            .navigationTitle("Добавить привычку")
            .navigationBarItems(leading: Button("Закрыть") {
                dismiss()
            }, trailing: Button("Сохранить") {
                let habit = Habit(title: title, habit: habit)
                viewModel.habits.append(habit)
                dismiss()
            })
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(viewModel: Habits())
    }
}
