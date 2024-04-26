//
//  CheckoutView.swift
//  Sneakult
//
//  Created by student on 25/04/24.
//

import SwiftUI

struct CheckoutView: View {
    var body: some View {
           ScrollView {
               CheckoutcardView()
           }
           .navigationTitle("Checkout")
       }
}


struct CheckoutcardView : View {
    @State private var quantity: Int = 1
    var body: some View {
        HStack(alignment: .top) {
            Image("Image")
                .resizable()
                .frame(width: 130, height: 130)
                .clipShape(Rectangle())
                .cornerRadius(14)
            VStack(alignment: .leading) {
                Text("Jordan Retro 6G")
                    .font(.headline)
                Text("₹19,695")
                    .font(.subheadline)
                
                HStack {
                    Stepper(value: $quantity, in: 1...10) {
                        Text("Quantity: \(quantity)")
                    }
                    .labelsHidden()
                    Image(systemName: "cart.fill")
                        .padding(.leading)
                    Image(systemName: "trash.fill")
                        .padding(.leading)
                }
                
            }
            .padding()
        }.overlay(RoundedRectangle(cornerRadius: 16.0).stroke(style: StrokeStyle()))
            .padding()
    }
       
}

#Preview {
    CheckoutView()
}
