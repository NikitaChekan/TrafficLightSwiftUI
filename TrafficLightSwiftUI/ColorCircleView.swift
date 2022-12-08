//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let alpha: CGFloat
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color.opacity(alpha))
            .overlay(Circle().stroke(.white, lineWidth: 2))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, alpha: 0.2)
    }
}
