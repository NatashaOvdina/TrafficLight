//
//  RedCircleView.swift
//  TrafficLight
//
//  Created by Natalia Ovdina on 01.03.2024.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

#Preview {
    CircleView(color: .red, opacity: 1 )
}
