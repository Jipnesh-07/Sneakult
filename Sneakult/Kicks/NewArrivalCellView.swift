//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct NewArrivalCellView: View {
    @State private var shoe: [String] = ["Shoe1", "Shoe2", "Shoe3", "Shoe4", "Shoe5", "Shoe6", "Shoe7", "Shoe8", "Shoe9", "Shoe10"]
    @State private var selectShoe: String = ""

    var body: some View {
        NavigationLink(destination: DetailView1()) {
            VStack {
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .overlay(
                            VStack {
                                Image(selectShoe)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipped()
                                    .cornerRadius(20)
                                Spacer()
                                VStack {
                                    Text("Nike High")
                                        .foregroundColor(.gray)
                                        .font(.headline)
                                    Text("$200")
                                        .font(.body)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.bottom, 50)
                            .padding(.horizontal, 0)
                        )
                        .shadow(radius: 8)
                }
            }
        }
        .onAppear {
            selectShoe = shoe.randomElement() ?? "defaultShoeImage"
        }
    }
}

struct DetailView1: View {
    var body: some View {
        Text("Detail View")
    }
}

#if DEBUG
struct NewArrivalCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewArrivalCellView()
    }
}
#endif
