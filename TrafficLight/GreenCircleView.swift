//
//  GreenCircleView.swift
//  TrafficLight
//
//  Created by Natalia Ovdina on 01.03.2024.
//

import SwiftUI

struct GreenCircleView: View {
    
    var body: some View {
        Circle()
            .foregroundStyle(.green)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}


#Preview {
    GreenCircleView()
}
