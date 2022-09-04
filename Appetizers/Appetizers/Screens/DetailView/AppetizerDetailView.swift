//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Pedro Boga on 04/09/22.
//

import SwiftUI

struct AppetizerDetailView: View {
    @State var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .bold()
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5)  {
                        Text("Carbs")
                            .font(.caption)
                            .bold()
                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5)  {
                        Text("Protein")
                            .font(.caption)
                            .bold()
                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            Spacer()
            Button {
                //
            } label: {
                Text("\(appetizer.price , format: .currency(code: Locale.current.currencyCode ?? "USD")) - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color("brandPrimary"))
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }), alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
            //.previewLayout(.sizeThatFits)
    }
}
