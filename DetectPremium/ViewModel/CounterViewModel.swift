//
//  CounterViewModel.swift
//  DetectPremium
//
//  Created by Rasika Punde on 6/27/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var counter = Counter()
    
    var isPremium: Bool {
        counter.isPremium
    }
    
    var count: Int {
        counter.count
    }
    
    func increment() {
        counter.increment()
    }
}
