//
//  SneakerCardView.swift
//  Sneakult
//
//  Created by student on 25/04/24.
//

import SwiftUI

struct SneakerCardView: View {
  
    var body: some View {
        VStack{
            HStack(spacing:15){
                Image("Image")
//                    .padding()
                    .resizable()
                    .frame(width: 75, height: 85)
                    .aspectRatio(contentMode: .fit)
//                    .padding(.trailing,60)
                Text("Jordan Nu Retro")
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
//                Image(systemName: "chevron.forward")
////                    .padding()
//                    .resizable()
//                    .frame(width: 16, height: 16)
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing,45)
                    
               
            }
            
            .frame(width: 300)
            
//            .background(.blue)
        }
        .padding(12)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
//        .overlay(RoundedRectangle(cornerRadius: 16.0).stroke(style: StrokeStyle()))
        .shadow(color: .gray, radius: 5)
        
    }
}

#Preview {
    SneakerCardView()
}
