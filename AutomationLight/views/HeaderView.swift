//
//  HeaderView.swift
//  AutomationLight
//
//  Created by Kévin Esprit on 09/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Welcome home,")
                    .font(.subheadline)
                Text("Nicolas")
                    .font(.system(size: 40))
                    .bold()
            }
            Spacer()
            Button(action: {
                print("settings")
            }) {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.background)
            }
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
