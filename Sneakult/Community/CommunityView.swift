//
//  CommunityView.swift
//  Sneakult
//
//  Created by STUDENT on 23/04/24.
//

import SwiftUI

struct CommunityView: View{
    @State private var SearchTitle: String = ""
    var body: some View{
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0...8, id: \.self){
                        community in CommunityUIViewCell()
                    }
                }
            }
            .navigationTitle("Community")
            .searchable(text: $SearchTitle)
//         .navigationBarTitleDisplayMode(.inline)
            
        }
     
        
        
    }
}

#Preview {
    CommunityView()
}
