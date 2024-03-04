//
//  ContentView.swift
//  TrafficLight
//
//  Created by Natalia Ovdina on 01.03.2024.
//

import SwiftUI

struct TrafficLightView: View {
    
    @State private var currentLight = CurrentLight.red
    
    @State private var redCircleOpacity = 0.3
    @State private var yellowCircleOpacity = 0.3
    @State private var greenCircleOpacity = 0.3
    
    @State private var buttonText = "START"
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 40) {
            CircleView(color: .red, opacity: redCircleOpacity)
            CircleView(color: .yellow, opacity: yellowCircleOpacity)
            CircleView(color: .green, opacity: greenCircleOpacity)
        }
        .padding(.top, 80)
        
        Spacer()
        
        ButtonView(title: buttonText) {
            if buttonText == "START" {
                buttonText = "NEXT"
            }
            startButtonPressed()
        }
    }
    
    private func startButtonPressed() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenCircleOpacity = lightIsOff
            redCircleOpacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redCircleOpacity = lightIsOff
            yellowCircleOpacity = lightIsOn
            currentLight = .green
        case .green:
            greenCircleOpacity = lightIsOn
            yellowCircleOpacity = lightIsOff
            currentLight = .red
        }
    }
}

extension TrafficLightView {
    private enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    TrafficLightView()
}
