//
//  ContentView.swift
//  AutomationLight
//
//  Created by Kévin Esprit on 06/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HeaderView()
                .padding()
            LampConfigurationView()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}