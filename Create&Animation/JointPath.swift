//
//  JointPath.swift
//  Create&Animation
//
//  Created by Alisa Ts on 07.02.2022.
//

import SwiftUI

struct JointPath: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            PathB(width: width, height: height)
            PathA(width: width, height: height)
        }
    }
}

struct JointPath_Previews: PreviewProvider {
    static var previews: some View {
        JointPath(width: 200, height: 200)
            .background(.gray)
    }
}
