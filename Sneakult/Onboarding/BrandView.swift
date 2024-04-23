//
//  BrandView.swift
//  App
//
//  Created by STUDENT on 21/04/24.
//

import SwiftUI

struct BrandView: View {
//    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Follow sellers that most \n interest you")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
            }
//            Text("\(searchText)")
                
            
            
            VStack {
                Text("Our Top Sellers")
            }
        }
        Spacer()
        
//        .searchable(text: $searchText)
        
    }
    
    
 
        
    }

#Preview {
    BrandView()
}
