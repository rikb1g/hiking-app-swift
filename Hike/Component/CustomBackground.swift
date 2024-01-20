//
//  CustomBackground.swift
//  Hike
//
//  Created by Ricardo Sousa on 19/01/2024.
//

import SwiftUI

struct CustomBackground: View {
    var body: some View {
        ZStack {
            // MARK: -3. DEPTH
            Color.customColorGreenDark
                .cornerRadius(40)
                // faz a imagem vir mais para fora
                .offset(y: 12)
            
            // MARK: -2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
                
            
            // MARK: -1. SURFACE
            
            LinearGradient(colors: [
                .customGreenLight,
                .customColorGreenMedium],
                startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackground()
        .padding()
}
