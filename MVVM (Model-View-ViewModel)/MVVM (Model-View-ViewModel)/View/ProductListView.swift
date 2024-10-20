//
//  ProductListView.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Huy vu on 20/10/24.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    
    var body: some View {
        List(viewModel.products) { product in
            Text("\(product.name) - $\(product.price)")
        }
        .onAppear {
            viewModel.loadProducts()
        }
    }
}


