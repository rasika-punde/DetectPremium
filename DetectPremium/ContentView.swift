//
//  ContentView.swift
//  DetectPremium
//
//  Created by Rasika Punde on 6/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var vm: CounterViewModel
    
    init() {
        self.vm = CounterViewModel()
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(vm.isPremium ? "Premium" : "")")
                .font(Font.system(size: 46, weight: .bold))
                .foregroundLinearGradient(
                        colors: [.red, .blue, .green, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Text("\(vm.count)")
                .font(Font.system(size: 40))
            
            Button(action: {
                vm.increment()
            }, label: {
                Text("Increment")
                    .fontWeight(.medium)
                    .foregroundStyle(Color.white)
                    .padding(20)
                    .background(Color.pink)
                    .clipShape(.capsule)
            })
            .padding(.top, 20)
        }
        
    }
}

#Preview {
    ContentView()
}
