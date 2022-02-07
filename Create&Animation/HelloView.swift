//
//  HelloView.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        GeometryReader { geometry in
            
            Path { path in
                path.move(to: CGPoint(x: 15, y: 95))
                path.addLine(to: CGPoint(x: 50, y: 15))
                path.addQuadCurve(
                    to: CGPoint(x: 20, y: 30),
                    control: CGPoint(x: 30, y: 45))
                path.move(to: CGPoint(x: 30, y: 60))
                path.addQuadCurve(
                    to: CGPoint(x: 60, y: 70),
                    control: CGPoint(x: 90, y: 20))
                path.addQuadCurve(
                    to: CGPoint(x: 85, y: 85),
                    control: CGPoint(x: 35, y: 110))
                path.addQuadCurve(
                    to: CGPoint(x: 105, y: 60),
                    control: CGPoint(x: 95, y: 80))
                path.addQuadCurve(
                    to: CGPoint(x: 90, y: 60),
                    control: CGPoint(x: 110, y: 45))
                path.addQuadCurve(
                    to: CGPoint(x: 90, y: 90),
                    control: CGPoint(x: 60, y: 80))
                path.addQuadCurve(
                    to: CGPoint(x: 135, y: 50),
                    control: CGPoint(x: 110, y: 90))
                path.addLine(to: CGPoint(x: 150, y: 20))
                path.move(to: CGPoint(x: 135, y: 50))
                path.addQuadCurve(
                    to: CGPoint(x: 165, y: 50),
                    control: CGPoint(x: 105, y: 130))
                path.addLine(to: CGPoint(x: 180, y: 20))
                path.move(to: CGPoint(x: 165, y: 50))
                path.addQuadCurve(
                    to: CGPoint(x: 180, y: 70),
                    control: CGPoint(x: 145, y: 120))
                path.addQuadCurve(
                    to: CGPoint(x: 210, y: 60),
                    control: CGPoint(x: 175, y: 120))
                path.addQuadCurve(
                    to: CGPoint(x: 185, y: 60),
                    control: CGPoint(x: 210, y: 40))
                path.addQuadCurve(
                    to: CGPoint(x: 180, y: 70),
                    control: CGPoint(x: 182, y: 63))
                path.move(to: CGPoint(x: 210, y: 60))
                path.addQuadCurve(
                    to: CGPoint(x: 230, y: 50),
                    control: CGPoint(x: 220, y: 70))
                
            }
            
            .stroke(
                LinearGradient(
                    colors: [.blue, .purple, .pink, .red, .orange, .yellow, .green],
                    startPoint: UnitPoint(x: 0, y: 0),
                    endPoint: UnitPoint(x: 1, y: 0)), lineWidth: 7)
            
        }
        .frame(width: 230, height: 130)
        
    }
}
struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
