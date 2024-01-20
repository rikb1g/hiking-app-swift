//
//  SettingsView.swift
//  Hike
//
//  Created by Ricardo Sousa on 20/01/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
           // MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80).weight(.black))
                    VStack (spacing: -10){
                        Text("HIKE")
                            .font(.system(size: 66).weight(.black))
                        Text("Editor Choise")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80).weight(.black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customColorGreenMedium, .customColorGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It´s time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customColorGreenMedium)
                }.multilineTextAlignment(.center)
                    .padding(.bottom,16)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            
            // MARK: - SECTION: ABOUT
            Section(header: Text("ABOUT THE APP."), footer: HStack{
                Spacer()
                Text("Copyright © All rights reserved")
                Spacer()
            }.padding(.vertical, 8)
            ) {
                
            // 1. Basic level content
            //LabeledContent("Aplication", value: "Hike")
            // 2. Advanced content
               
                
            }//: SECTION

        }//: LIST
            }
}

#Preview {
    SettingsView()
}
