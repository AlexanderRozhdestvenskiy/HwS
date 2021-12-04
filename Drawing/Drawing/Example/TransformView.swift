//
//  TransformView.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 02.12.2021.
//

import SwiftUI

struct Flower: Shape {
    
    var petalOffset = -20.0 // На сколько нужно отодвинуть лепесток от центра
    var petalWidth = 100.0 // Какой ширины сделать каждый лепесток
    
    func path(in rect: CGRect) -> Path {
        var path = Path() // Путь, который будет содержать все лепестки
        
        // Считаем от 0 до пи * 2, каждый раз увеличивая пи / 8
        for number in stride(from: 0, through: Double.pi * 2, by: Double.pi / 8) {
            
            // поворачиваем лепесток на текущее значение нашего цикла
            let rotation = CGAffineTransform(rotationAngle: number)
            
            // перемещаем лепесток так, чтобы он находился в центре нашей вьюшки
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            // создаем контур для этого лепестка, используя наши свойства плюс фиксированные Y и высоту
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            
            // примените наше преобразование вращения/положения к лепестку
            let rotatedPetal = originalPetal.applying(position)
            
            // добавляем его в наш основной путь
            path.addPath(rotatedPetal)
        }
        // теперь отправьте главный путь обратно
        return path
    }
}

struct TransformView: View {
    
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    
    var body: some View {
        VStack {
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
                .stroke(.red, lineWidth: 1)
            
            Text("Offset")
            Slider(value: $petalOffset, in: -40...40)
                .padding()
            
            Text("Width")
            Slider(value: $petalWidth, in: 0...100)
                .padding()
        }
    }
}

struct TransformView_Previews: PreviewProvider {
    static var previews: some View {
        TransformView()
    }
}
