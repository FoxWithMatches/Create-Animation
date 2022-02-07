//
//  SquareView.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct SquareView: View {
    let width: CGFloat
    let height: CGFloat
    let blue = Color(red: 0.4627, green: 0.7322, blue: 1.0)
    let skyBlue = Color(red: 0.3, green: 0.9632, blue: 1.0)
    
    var body: some View {
        
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let nearLine = size * 0.1
            let nearLine2 = size * 0.2
            let farLine2 = size * 0.8
            let farLine = size * 0.9
            let middle = size / 2
            
            
            Path { path in
                path.move(
                    to: CGPoint(x: nearLine2, y: nearLine))
                path.addLine(
                    to: CGPoint(x: farLine2, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: nearLine2),
                    control: CGPoint(x: farLine, y: nearLine))
                path.addLine(
                    to: CGPoint(x: farLine, y: farLine2))
                path.addQuadCurve(
                    to: CGPoint(x: farLine2, y: farLine),
                    control: CGPoint(x: farLine, y: farLine))
                path.addLine(
                    to: CGPoint(x: nearLine2, y: farLine))
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: farLine2),
                    control: CGPoint(x: nearLine, y: farLine))
                path.addLine(
                    to: CGPoint(x: nearLine, y: nearLine2))
                path.addQuadCurve(
                    to: CGPoint(x: nearLine2, y: nearLine),
                    control: CGPoint(x: nearLine, y: nearLine))
                
            }
            .stroke(lineWidth: 2)
            CircleView(width: 150, height: 150)
                .offset(x: geometry.size.width / 8,
                        y: geometry.size.height / 8)
            CircleView(width: 120, height: 120)
                .offset(x: geometry.size.width / 5,
                    y: geometry.size.height / 5)
            JointPath(width: 160, height: 160)
                .offset(x: geometry.size.width / 10,
                        y: geometry.size.height / 2)
            JointPath(width: 160, height: 160)
                .offset(x: geometry.size.width / 6,
                        y: geometry.size.height / 6)
                .rotationEffect(.degrees(60))
            JointPath(width: 160, height: 160)
                .offset(x: -geometry.size.width / 14,
                        y: geometry.size.height / 3)
                .rotationEffect(.degrees(-60))
            
        }
        .background(LinearGradient(
            colors: [blue, skyBlue],
            startPoint:  UnitPoint(x: 1, y: 1),
            endPoint:  UnitPoint(x: 1, y: 0)))
        .foregroundColor(.white)
        .frame(width: width, height: height)
        .cornerRadius(30)
    }
    
}
struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        SquareView(width: 200, height: 200)
    }
}
