//
//  PathA.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//
import SwiftUI

struct PathA: View {
    
    let width: CGFloat
    let height: CGFloat
    
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
            .stroke(Color.white, lineWidth: 2)
            .opacity(0.8)
        }
        .frame(width: width, height: height)
    }
}

struct PathA_Previews: PreviewProvider {
    static var previews: some View {
        PathA(width: 100, height: 100)
            .background(.blue)
    }
}
