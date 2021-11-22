//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Alexander Rozhdestvenskiy on 22.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countres = ["Estonia", "France", "Germany", "Ireland", "Italy",
                                   "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    var body: some View {
        ZStack {
            
            RadialGradient(stops: [
                .init(color: .blue, location: 0.3),
                .init(color: .red, location: 0.3) ],
                           center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 16) {
                    
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countres[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countres[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 12)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Reset", action: resetGame)
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    private func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    private func askQuestion() {
        countres.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    private func resetGame() {
        score = 0
        countres.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
