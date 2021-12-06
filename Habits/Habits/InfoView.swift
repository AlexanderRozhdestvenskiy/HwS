//
//  InfoView.swift
//  Habits
//
//  Created by Alexander Rozhdestvenskiy on 06.12.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue)
            VStack {
                Text("Информация")
                    .font(.largeTitle)
                
                Spacer()
                
                Text("Приложение для создания списка привычек. Добавляйте название и описание привычки, которую хотите практиковать.")
                    .font(.callout)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
