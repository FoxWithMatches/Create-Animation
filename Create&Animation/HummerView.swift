//
//  HummerView.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct HummerView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            
            Path { path in
                path.move(to: CGPoint(x: 55, y: 40))
                path.addQuadCurve(to: CGPoint(x: 90, y: 25),
                                  control: CGPoint(x: 60, y: 30))
                path.addQuadCurve(to: CGPoint(x: 130, y: 40),
                                  control: CGPoint(x: 120, y: 20))
                path.addQuadCurve(to: CGPoint(x: 142, y: 43),
                                  control: CGPoint(x: 135, y: 45))
                path.addLine(to: CGPoint(x: 150, y: 50))
                path.addQuadCurve(to: CGPoint(x: 140, y: 70),
                                  control: CGPoint(x: 150, y: 60))
                path.addLine(to: CGPoint(x: 130, y: 70))
                path.addQuadCurve(to: CGPoint(x: 110, y: 70),
                                  control: CGPoint(x: 120, y: 55))
                path.addQuadCurve(to: CGPoint(x: 90, y: 120),
                                  control: CGPoint(x: 100, y: 80))
                path.addQuadCurve(to: CGPoint(x: 60, y: 180),
                                  control: CGPoint(x: 80, y: 160))
                path.addQuadCurve(to: CGPoint(x: 40, y: 170),
                                  control: CGPoint(x: 45, y: 185))
                path.addQuadCurve(to: CGPoint(x: 70, y: 110),
                                  control: CGPoint(x: 40, y: 140))
                path.addQuadCurve(to: CGPoint(x: 100, y: 50),
                                  control: CGPoint(x: 90, y: 80))
                path.addQuadCurve(to: CGPoint(x: 55, y: 40),
                                  control: CGPoint(x: 90, y: 30))
            }
            .fill(
                LinearGradient(
                    colors: [.gray, .black],
                    startPoint: UnitPoint(x: 1, y: 0),
                    endPoint: UnitPoint(x: 0, y: 0))
            )
            .scaleEffect(1.5)
            .offset(x: 60, y: -10)
        }
        .shadow(color: .black, radius: 5, x: 5, y: 10)
        .frame(width: width, height: height)
    }
}
struct HummerView_Previews: PreviewProvider {
    static var previews: some View {
        HummerView(width: 200, height: 200)
    }
}
