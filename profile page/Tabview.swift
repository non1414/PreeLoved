//
//  Tabview.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 22/07/1444 AH.
//

import SwiftUI

struct Tabview: View {
    var body: some View {
        TabView {
            Explore()
                .tabItem{
                    Label("", systemImage: "magnifyingglass")
                }
            Profile2()
                .tabItem{
                    Label("", systemImage: "person")
                }

            ContentView()
                .tabItem{
                    Label("", systemImage: "envelope")
                }
            Wishlist2()
                .tabItem{
                    Label("", systemImage: "heart")
                }
            
        }
        
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
