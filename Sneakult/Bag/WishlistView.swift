//
//  WishlistView.swift
//  Sneakult
//
//  Created by student on 25/04/24.
//

import SwiftUI

struct WishlistView: View {
  
    var body: some View {
        VStack{
            ScrollView {
                MyWishlistCard()
            }
        }
        .navigationTitle("My Wishlist")
    }
}

struct MyWishlistCard: View {
    var body: some View {
        HStack {
            Image("Image")
                .resizable()
                .frame(width: 130, height: 130)
            VStack(alignment: .leading) {
                Text("Jordan Retro 6G")
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                HStack(alignment: .top){
                    Text("₹19,695")
                        .font(.subheadline)
                    
                    Image(systemName: "cart.fill")
                    Image(systemName: "trash.fill")
                        
                }
                
                
            }
            .padding()
        }.overlay(RoundedRectangle(cornerRadius: 16.0).stroke(style: StrokeStyle()))
            .padding()
    }
}

#Preview {
    WishlistView()
}
