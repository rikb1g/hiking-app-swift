//
//  CustomCircleView.swift
//  Hike
//
//  Created by Ricardo Sousa on 20/01/2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .customColorIndigoMedium,
                        .customColorsalmonlight], startPoint: isAnimateGradient ? .topLeading: .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    ))
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
            
        }//: ZSTACK
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
