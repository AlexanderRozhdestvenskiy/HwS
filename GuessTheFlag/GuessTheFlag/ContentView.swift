//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Alexander Rozhdestvenskiy on 22.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
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
                        
                        Text(viewModel.countres[viewModel.correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            viewModel.flagTapped(number)
                        } label: {
                            NewImage(text: viewModel.countres[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                
                Spacer()
                
                Text("Score: \(viewModel.score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(viewModel.scoreTitle, isPresented: $viewModel.showingScore) {
            Button("Reset", action: viewModel.resetGame)
            Button("Continue", action: viewModel.askQuestion)
        } message: {
            if viewModel.scoreTitle == "Correct" {
                Text("Yes is \(viewModel.countres[viewModel.correctAnswer])")
            } else {
                Text("Not! Is \(viewModel.countres[viewModel.numberID])\nAttempts Left: \(viewModel.lefts)")
            }
            
        }
        
        .alert("Game Over", isPresented: $viewModel.showingGameOver) {
            Button("Play Again", action: viewModel.resetGame)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    // MARK: - ViewModifier

struct NewImage: View {
    var text: String
    var body: some View {
        Image(text)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 12)
    }
}
