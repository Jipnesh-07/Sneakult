//
//  AnnouncementsCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct AnnouncementsCellView: View {
    @State private var shoe: [String] = ["Shoe1", "Shoe2", "Shoe3", "Shoe4", "Shoe5", "Shoe6"]
    @State private var selectShoe: String = ""
    
    var body: some View {
        Button(action: {}) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 300, height: 150)
                .overlay(
                    HStack {
                        VStack {
                            Image(selectShoe)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        }
                        .frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Nike High")
                                .foregroundColor(.primary)
                                .font(.headline)
                            
                            Text("$200")
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
                )
                .shadow(radius: 5)
        }
        .onAppear {
            selectShoe = shoe.randomElement() ?? "defaultShoeImage"
        }
    }
}

#if DEBUG
struct AnnouncementsCellView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementsCellView()
    }
}
#endif
