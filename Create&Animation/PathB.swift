//
//  PathB.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct PathB: View {
    
    let width: CGFloat
    let height: CGFloat
    let blue = Color(red: 0.4627, green: 0.7322, blue: 1.0)
    let skyBlue = Color(red: 0.3, green: 0.9632, blue: 1.0)
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let nearLine = size * 0.1
            let nearLine2 = size * 0.15
            let nearLine3 = size * 0.2
            let farLine2 = size * 0.8
            let farLine = size * 0.9
            
            Path { path in
                path.move(
                    to: CGPoint(x: nearLine3, y: nearLine))
                path.addLine(
                    to: CGPoint(x: farLine2, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: nearLine2),
                    control: CGPoint(x: farLine, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine2, y: nearLine3),
                    control: CGPoint(x: farLine, y: nearLine3))
                path.addLine(
                    to: CGPoint(x: nearLine3, y: nearLine3))
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: nearLine2),
                    control: CGPoint(x: nearLine, y: nearLine3))
                path.addQuadCurve(
                    to: CGPoint(x: nearLine3, y: nearLine),
                    control: CGPoint(x: nearLine, y: nearLine))
            }
            .fill(
                LinearGradient(
                    colors: [blue, skyBlue],
                    startPoint:  UnitPoint(x: 0, y: 0),
                    endPoint:  UnitPoint(x: 1, y: 0.5))
            )
        }
        .frame(width: width, height: height)
    }
}

struct PathB_Previews: PreviewProvider {
    static var previews: some View {
        PathB(width: 100, height: 100)
            .background(.blue)
    }
}

