//
//  MainView.swift
//  App
//
//  Created by STUDENT on 19/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            KicksView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "person.3.fill")
                }
            
            
            BiddingView()
                .tabItem {
                    Label("Bidding", systemImage: "dollarsign")
                }
            
            
            BagView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .tint(Color.black)
        
    }
}

#Preview {
    MainView()
}
