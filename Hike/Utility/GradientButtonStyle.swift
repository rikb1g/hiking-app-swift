//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ricardo Sousa on 19/01/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View{
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A: B
                configuration.isPressed ?
                // A: When user press the button
                LinearGradient(colors: [.customColorGrayMedium, .customColorGrayLight], startPoint: .top, endPoint: .bottom)
                // B: When the button is not pressed
                :
            LinearGradient(colors: [.customColorGrayLight, .customColorGrayMedium], startPoint: .top, endPoint: .bottom)
            ).cornerRadius(40)
    }
}
