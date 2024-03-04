//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Natalia Ovdina on 04.03.2024.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 25)).bold()
                .foregroundStyle(.white)
                .padding().frame(minWidth: 120, minHeight: 60)
                .background(.tint, in: Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}

#Preview {
    ButtonView(title: "START", action: {})
}
