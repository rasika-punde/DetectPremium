//
//  ForegroundLinearGradient.swift
//  DetectPremium
//
//  Created by Pratik Mistry on 6/27/24.
//

import Foundation
import SwiftUI

extension Text {
    public func foregroundLinearGradient(colors: [Color]) -> some View {
            self.overlay {
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
                    .mask(
                        self
                        
                    )
            }
        }
}
