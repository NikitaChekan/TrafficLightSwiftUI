//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var changeColor = ChangeColor.red
    
    @State private var redCircle: CGFloat = 0.2
    @State private var yellowCircle: CGFloat = 0.2
    @State private var greenCircle: CGFloat = 0.2
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, alpha: redCircle)
                ColorCircleView(color: .yellow, alpha: yellowCircle)
                    .padding()
                ColorCircleView(color: .green, alpha: greenCircle)

                Spacer()
                
                Button(action: changeColorButtonDidTapped) {
                    Text(buttonTitle)
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.medium)
                }
                .tint(.blue)
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            }
            .padding()
        }
    }
    
    private func changeColorButtonDidTapped() {
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

private enum ChangeColor {
    case red, yellow, green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
