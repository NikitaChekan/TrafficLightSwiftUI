//
//  GreenCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by jopootrivatel on 08.12.2022.
//

import SwiftUI

struct GreenCircleView: View {
    let color = Color(CGColor(red: 0, green: 255, blue: 0, alpha: 0.2))
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color)
            .overlay(Circle().stroke(.white, lineWidth: 2))
    }
}

struct GreenCircleView_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircleView()
    }
}
