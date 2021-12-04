//
//  PathView.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 02.12.2021.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 50))
            path.addLine(to: CGPoint(x: 30, y: 700))
            path.addLine(to: CGPoint(x: 360, y: 700))
            path.addLine(to: CGPoint(x: 200, y: 50))
            path.closeSubpath()
        }
        .stroke(.indigo, style: StrokeStyle(lineWidth: 50,
                                            lineCap: .round,
                                            lineJoin: .round)
        )
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
