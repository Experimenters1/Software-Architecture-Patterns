//
//  CounterModel.swift
//  ObservableObject
//
//  Created by Huy vu on 20/10/24.
//

import Foundation
import SwiftUI

// Tạo class tuân thủ protocol ObservableObject
class CounterModel: ObservableObject {
    // @Published: khi giá trị thay đổi, SwiftUI sẽ biết để cập nhật view
    @Published var counter: Int = 0
    
    func increment() {
        counter += 1
    }
}

