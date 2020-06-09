//
//  LampConfigurationView.swift
//  AutomationLight
//
//  Created by Kévin Esprit on 09/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LampConfigurationView: View {
    
    @State var level: CGFloat = 100
    
    private var percentage: Int {
        Int((100 * level) / 400)
    }
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.05)
                .cornerRadius(30)
            VStack {
                Capsule()
                    .frame(width: 80, height: 5)
                    .padding(.top)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Pendant lamp")
                            .font(.title)
                            .bold()
                        Text("Bedroom")
                            .font(.subheadline)
                    }
                    Spacer()
                    Image(systemName: "lightbulb")
                        .resizable()
                        .frame(width: 40, height: 50)
                        .rotationEffect(.degrees(180))
                }
                .padding(.horizontal, 40)
                .padding(.top, 40)
                .padding(.bottom, 40)
                LevelView(height: self.$level)
                
                Text("\(percentage) %")
                    .font(.title)
                    .bold()
                Button(action: {
                    print("nothing")
                }) {
                    HStack {
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Until 11:00 PM")
                    }
                    
                }
                .padding()
                .background(Color.white)
                .foregroundColor(.background)
                .cornerRadius(25)
                .shadow(color: Color.black.opacity(0.2), radius: 8)
                Spacer()
            }
            .foregroundColor(Color.white.opacity(0.8))
            .background(Color.background)
            .cornerRadius(40)
            .padding(.top, 12)
        }
    }
}

struct LampConfigurationView_Previews: PreviewProvider {
    static var previews: some View {
        LampConfigurationView()
    }
}
