//
//  CustomButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        Button(action: doSomething) {
            Text("START")
                .font(.title)
                .foregroundColor(.blue)
                .fontWeight(.medium)
        }
        .tint(.blue)
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        
        .padding()
    }
    
    private func doSomething() {
        
    }

}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
    }
}
