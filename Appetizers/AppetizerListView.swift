//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Andrew Chong on 3/10/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
            .listStyle(.plain)
        }.onAppear() {
            viewModel.getAppetizers()
        }
    }
    
}
    
    #Preview {
        AppetizerListView()
    }

