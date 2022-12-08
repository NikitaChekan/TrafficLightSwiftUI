//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    private var buttonTitle = "START"
    private let changeColor = ChangeColor.red
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                RedCircleView()
                YellowCircleView()
                    .padding()
                GreenCircleView()

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
//        switch changeColor {
//        case .red:
//            greenCircleView.alpha = lightOff
//            redCircleView.alpha = lightOn
//            changeColor = .yellow
//        case .yellow:
//            redCircleView.alpha = lightOff
//            yellowCircleView.alpha = lightOn
//            changeColor = .green
//        case .green:
//            yellowCircleView.alpha = lightOff
//            greenCircleView.alpha = lightOn
//            changeColor = .red
//        }
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
