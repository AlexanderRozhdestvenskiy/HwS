//
//  ViewModel.swift
//  GuessTheFlag
//
//  Created by Alexander Rozhdestvenskiy on 22.11.2021.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var countres = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    
    @Published var correctAnswer = Int.random(in: 0...2)
    @Published var showingScore = false
    @Published var scoreTitle = ""
    @Published var numberID = 0
    @Published var score = 0
    @Published var showingGameOver = false
    @Published var wrongScore = 0
    @Published var lefts = 3
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            numberID = number
            scoreTitle = "Wrong"
            wrongScore += 1
            lefts -= 1
        }
        
        if wrongScore == 3 {
            showingGameOver = true
        } else {
            showingScore = true
        }
    }
    
    func askQuestion() {
        countres.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame() {
        score = 0
        wrongScore = 0
        countres.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}
