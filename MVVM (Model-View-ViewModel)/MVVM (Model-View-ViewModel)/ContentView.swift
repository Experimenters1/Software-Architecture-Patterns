//
//  ContentView.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Huy vu on 20/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductListView(viewModel: ProductListViewModel())
    }
}

#Preview {
    ContentView()
}
