//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct NewArrivalCellView: View {
    @State private var shoe: [String] = ["Shoe1", "Shoe2", "Shoe3", "Shoe4", "Shoe5", "Shoe6"]
    @State private var selectShoe: String = ""
    
    var body: some View {
        VStack {
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 150)
                    .overlay(
                        VStack {
                            Image(selectShoe)
                                .resizable()
                                .scaledToFit()
           
                            Spacer()
                            Text("Nike High")
                                .foregroundColor(.primary)
                                .font(.headline)
                            Text("$200")
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                        .padding()
                    )
                    .shadow(radius: 5)
            }
        }
        .onAppear {
            selectShoe = shoe.randomElement() ?? "defaultShoeImage"
        }
    }
}

#if DEBUG
struct NewArrivalCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewArrivalCellView()
    }
}
#endif
