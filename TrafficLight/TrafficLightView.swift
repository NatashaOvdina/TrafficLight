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
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 40) {
            RedCircleView().opacity(redCircleOpacity)
            YellowCircleView().opacity(yellowCircleOpacity)
            GreenCircleView().opacity(greenCircleOpacity)
        }
        .padding(.top, 80)
        
        Spacer()
        
        Button(action: startButtonPressed) {
            Text(buttonText)
                .font(.system(size: 25)).bold()
                .foregroundStyle(.white)
                .padding().frame(minWidth: 120, minHeight: 60)
                .background(.tint, in: Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
    
    private func startButtonPressed() {
        
        switch currentLight {
        case .red:
            changeButtonTitle()
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
    
    private func changeButtonTitle() {
        buttonText = "NEXT"
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