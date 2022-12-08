//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RedCircleView()
                .padding()
            YellowCircleView()
                .padding()
            GreenCircleView()
                .padding()
            Spacer()
            CustomButtonView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
