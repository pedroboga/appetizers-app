//
//  APButton.swift
//  Appetizers
//
//  Created by Pedro Boga on 04/09/22.
//

import SwiftUI

struct APButton: View {
    let price: Double
    var body: some View {
        Text("\(price , format: .currency(code: Locale.current.currencyCode ?? "USD")) - Add to Order")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color("brandPrimary"))
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(price: 9.99)
    }
}
