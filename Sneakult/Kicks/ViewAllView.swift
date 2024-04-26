//
//  ViewAllView.swift
//  Sneakult
//
//  Created by student on 25/04/24.
//

import SwiftUI

struct ViewAllView: View {
    var body: some View {
        VStack{
            ForEach(1..<10) { index in
                NewArrivalCellView()
                 

            }

                .padding(.horizontal)
        }
        .padding(.top, 40)
       Spacer()
       
    }
}

#Preview {
    ViewAllView()
}
