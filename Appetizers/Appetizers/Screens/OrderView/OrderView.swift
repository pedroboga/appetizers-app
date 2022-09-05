//
//  OrderView.swift
//  Appetizers
//
//  Created by Pedro Boga on 29/08/22.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.appetizer
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { item in
                        AppetizerListCell(appetizer: item)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.plain)
                Spacer()
                Button {
                    //
                } label: {
                    APButton(price: 9.99)
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("Orders")
        }
    }
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
