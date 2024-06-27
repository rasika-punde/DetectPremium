//
//  ForegroundLinearGradient.swift
//  DetectPremium
//
//  Created by Pratik Mistry on 6/27/24.
//

import Foundation
import SwiftUI

extension Text {
    public func foregroundLinearGradient(
        colors: [Color],
        startPoint: UnitPoint,
        endPoint: UnitPoint) -> some View {
        self.overlay {
            LinearGradient(
                colors: colors,
                startPoint: startPoint,
                endPoint: endPoint
            )
            .mask(
                self
                
            )
        }
    }
}
