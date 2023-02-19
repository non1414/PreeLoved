//
//  Wishlist2.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 26/07/1444 AH.
//

import SwiftUI

struct Wishlist2: View {
    var body: some View {
        NavigationView {
            
            Text("You haven't saved any drees to you wishlist yet.")
                .padding()
                .navigationTitle("Wishlist")
                .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct Wishlist2_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist2()
    }
}
