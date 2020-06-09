//
//  LevelView.swift
//  AutomationLight
//
//  Created by Kévin Esprit on 06/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LevelView: View {
    
    @Binding var height: CGFloat
    private let width: CGFloat = 120
    private let maxHeight: CGFloat = 400
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.secondary.frame(width: width, height: maxHeight)
            Color.white.frame(width: width, height: height)
                .gesture(
                    DragGesture()
                        .onChanged({
                            self.height = self.calculateHeight(startLocation: $0.startLocation, currentLocation: $0.location)
                            
                        })
            )
            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.bottom, 40)
                .foregroundColor(self.height > 50 ? .background : .white)
        }
        .clipShape(Capsule())
    }
    
    private func calculateHeight(startLocation: CGPoint, currentLocation: CGPoint) -> CGFloat {
        
        let height: CGFloat = startLocation.y > currentLocation.y ?
            self.height + (startLocation.y - currentLocation.y) :
            self.height - (currentLocation.y - startLocation.y)
        
        switch Int(height) {
        case 0 ... Int(maxHeight):
            return height
        case ..<0: return 0
        default : return maxHeight
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(height: .constant(100))
            .background(Color.background)
    }
}
