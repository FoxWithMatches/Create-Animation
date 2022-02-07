//
//  CircleView.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct CircleView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        Circle()
            .foregroundColor(.clear)
            .frame(width: width, height: height)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .opacity(0.3)
    }
    
}
struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(width: 100, height: 100)
            .background(.blue)
    }
}
