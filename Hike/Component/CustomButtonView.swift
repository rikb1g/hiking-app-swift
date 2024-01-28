//
//  CustomButtonView.swift
//  Hike
//
//  Created by Ricardo Sousa on 19/01/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors: [.white,.customGreenLight,.customColorGreenMedium], startPoint: .top, endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(colors: [.customColorGrayLight,.customColorGrayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.customColorGrayLight,.customColorGrayMedium], startPoint: .top, endPoint: .bottom))
        } // : ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider{
    static var previews: some View{
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
    
