//
//  CustomButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 11.12.2022.
//

import SwiftUI

struct CustomButtonView: View {
    let  title: String
    let  action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 100, height: 40)
                .font(.title)
                .foregroundColor(.blue)
                .fontWeight(.medium)
        }
        .tint(.blue)
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        .overlay(Capsule().stroke(.white, lineWidth: 0.5))
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(title: "START", action: {})
    }
}
