//
//  Color+extension.swift
//  AutomationLight
//
//  Created by Kévin Esprit on 06/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import UIKit
import SwiftUI

extension UIColor {
    static var background: UIColor { UIColor(named: "background")! }
    static var secondary: UIColor { UIColor(named: "secondary")! }
}


extension Color {
    static var background: Color { .init(.background) }
    static var secondary: Color { .init(.secondary) }
    static var lightWhite: Color { Color.white.opacity(0.5)}
}
