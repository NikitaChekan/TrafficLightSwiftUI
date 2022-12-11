//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

enum ChangeColor {
    case red, yellow, green
}

struct TrafficLightContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var redCircle = 0.2
    @State private var yellowCircle = 0.2
    @State private var greenCircle = 0.2
    
    @State private var changeColor = ChangeColor.red
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: redCircle)
                    .padding()
                ColorCircleView(color: .yellow, opacity: yellowCircle)
                    .padding()
                ColorCircleView(color: .green, opacity: greenCircle)
                    .padding()
                Spacer()
                
                CustomButtonView(
                    title: buttonTitle,
                    action: changeColorButtonDidTapped
                )
//                customButton
            }
            .padding()
        }
    }
    
//    private var customButton: some View {
//        Button(action: changeColorButtonDidTapped) {
//            Text(buttonTitle)
//                .frame(width: 100, height: 40)
//                .font(.title)
//                .foregroundColor(.blue)
//                .fontWeight(.medium)
//        }
//        .tint(.blue)
//        .buttonStyle(.bordered)
//        .buttonBorderShape(.capsule)
//        .controlSize(.large)
//        .overlay(Capsule().stroke(.white, lineWidth: 0.5))
//    }
    
    private func changeColorButtonDidTapped() {
        let lightOn = 1.0
        let lightOff = 0.2
        
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch changeColor {
        case .red:
            greenCircle = lightOff
            redCircle = lightOn
            changeColor = .yellow
        case .yellow:
            redCircle = lightOff
            yellowCircle = lightOn
            changeColor = .green
        case .green:
            yellowCircle = lightOff
            greenCircle = lightOn
            changeColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightContentView()
    }
}
