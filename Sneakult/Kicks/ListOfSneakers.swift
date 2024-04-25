//
//  ListOfSneakers.swift
//  Sneakult
//
//  Created by STUDENT on 23/04/24.
//

import SwiftUI

struct ListOfSneakers: View {
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            VStack {
                SneakerCardView()
                    .frame(height: 100)
                    .padding(12)
                SneakerCardView()
                    .frame(height: 100)
                    .padding(12)
                SneakerCardView()
                    .frame(height: 100)
                    .padding(12)
                SneakerCardView()
                    .frame(height: 100)
                    .padding(12)
                
       }
//            .padding()
            .searchable(text: $searchText)
            .navigationTitle("Jordan")
            
            .navigationBarTitleDisplayMode(.inline)
            Spacer()
        }
        
    }
}

#Preview {
    ListOfSneakers()
}
