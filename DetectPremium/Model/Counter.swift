//
//  Counter.swift
//  DetectPremium
//
//  Created by Rasika Punde on 6/27/24.
//

import Foundation

struct Counter {
    var count: Int = 0
    var isPremium: Bool = false
    
    mutating func increment() {
        count += 1
        if count % 3 == 0 {
            isPremium = true
        } else {
            isPremium = false
        }
    }
}
