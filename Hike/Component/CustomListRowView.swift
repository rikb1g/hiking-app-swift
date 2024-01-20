//
//  CustomListRowView.swift
//  Hike
//
//  Created by Ricardo Sousa on 20/01/2024.
//

import SwiftUI

struct CustomListRowView: View {
    var body: some View {
        LabeledContent {
            // content
            Text("Hike")
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            // label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Image(systemName: "apps.iphone")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text("Aplication")
                
            }
        }
    }
}

#Preview {
    CustomListRowView()
}
