//
//  ArcView.swift
//  Drawing
//
//  Created by Alexander Rozhdestvenskiy on 02.12.2021.
//

import SwiftUI

struct Arc: InsettableShape {
    
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    var insentAmount = 0.0

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifieldStart = startAngle - rotationAdjustment
        let modifieldEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2 - insentAmount,
                    startAngle: modifieldStart,
                    endAngle: modifieldEnd,
                    clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insentAmount += amount
        return arc
    }
}

struct ArcView: View {
    var body: some View {
        Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
            .strokeBorder(.indigo, lineWidth: 36)
    }
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ArcView()
    }
}
