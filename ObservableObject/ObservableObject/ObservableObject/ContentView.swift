//
//  ContentView.swift
//  ObservableObject
//
//  Created by Huy vu on 20/10/24.
//

import SwiftUI

struct ContentView: View {
    // Khởi tạo một đối tượng CounterModel
       @ObservedObject var counterModel = CounterModel()
    
    var body: some View {
        VStack {
            
            // Hiển thị giá trị counter
            Text("Counter: \(counterModel.counter)")
                .font(.largeTitle)
                .padding()
            
            // Nút tăng giá trị counter
            Button(action: {
                counterModel.increment()
            }) {
                Text("Increment")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
       
    }
}

#Preview {
    ContentView()
}
