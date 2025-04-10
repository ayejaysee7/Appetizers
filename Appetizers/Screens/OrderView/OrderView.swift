//
//  OrderView.swift
//  Appetizers
//
//  Created by Andrew Chong on 3/10/25.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems

    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}
#Preview {
    OrderView()
}
