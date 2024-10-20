//
//  ProductListViewModel.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Huy vu on 20/10/24.
//

import Foundation
import SwiftUI

class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = []
       
       func loadProducts() {
           self.products = [
               Product(id: 1, name: "iPhone", price: 999.99),
               Product(id: 2, name: "MacBook", price: 1999.99)
           ]
       }
}
