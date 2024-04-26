//
//  BagView.swift
//  Sneakult
//
//  Created by STUDENT on 23/04/24.
//

import SwiftUI

struct BagView: View {
    var body: some View {
          VStack(alignment: .leading) {
              ScrollView() {
                  MyCartCard()
              }
          }
          .navigationTitle("My Cart")
      }
}
struct MyCartCard: View {
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
    BagView()
}
