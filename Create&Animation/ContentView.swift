//
//  ContentView.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showHummer = false
    
    var body: some View {
        VStack {
            ZStack {
                SquareView(width: 200, height: 200)
                HummerView(width: 200, height: 200)
                    .rotationEffect(.degrees(showHummer ? 0 : 360))
                    .scaleEffect(showHummer ? 1.3 : 1)
            }
            .onTapGesture {
                withAnimation(Animation.easeInOut(duration: 1).delay(0.5)) {
                    showHummer.toggle()
                }
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
