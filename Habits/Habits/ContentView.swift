//
//  ContentView.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 05.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = Habits()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.habits.isEmpty {
                    Text("Список пуст\nДобавьте привычку")
                        .multilineTextAlignment(.center)
                } else {
                    List {
                        ForEach(viewModel.habits) { habit in
                            NavigationLink {
                                DetailView(habit: habit)
                            } label: {
                                HStack {
                                    Text(habit.title)
                                }
                            }
                        }
                        .onMove(perform: viewModel.move(from:to:))
                        .onDelete(perform: viewModel.removeHabit(at:))
                    }
                    
                }
            }
            .navigationTitle("Привычка")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button {
                        viewModel.isShowInfoView = true
                    } label: {
                        Image(systemName: "info.circle")
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    
                    if !viewModel.habits.isEmpty {
                        EditButton()
                    }
                    
                    Button {
                        viewModel.isShowAddView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $viewModel.isShowAddView) {
                AddView(viewModel: viewModel)
            }
            .sheet(isPresented: $viewModel.isShowInfoView) {
                InfoView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
